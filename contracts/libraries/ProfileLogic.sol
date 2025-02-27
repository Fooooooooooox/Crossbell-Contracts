// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

import "hardhat/console.sol";
import "./DataTypes.sol";
import "./Events.sol";
import "./Constants.sol";
import "../interfaces/ILinkModule4Profile.sol";
import "../interfaces/ILinklist.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

library ProfileLogic {
    using EnumerableSet for EnumerableSet.Bytes32Set;

    function createProfile(
        DataTypes.CreateProfileData calldata vars,
        bool validateHandle,
        uint256 profileId,
        mapping(bytes32 => uint256) storage _profileIdByHandleHash,
        mapping(uint256 => DataTypes.Profile) storage _profileById
    ) external {
        if (validateHandle) {
            _validateHandle(vars.handle);
        }

        bytes32 handleHash = keccak256(bytes(vars.handle));
        require(_profileIdByHandleHash[handleHash] == 0, "HandleExists");

        _profileIdByHandleHash[handleHash] = profileId;

        _profileById[profileId].profileId = profileId;
        _profileById[profileId].handle = vars.handle;
        _profileById[profileId].uri = vars.uri;

        // init link module
        if (vars.linkModule != address(0)) {
            _profileById[profileId].linkModule = vars.linkModule;

            ILinkModule4Profile(vars.linkModule).initializeLinkModule(
                profileId,
                vars.linkModuleInitData
            );
        }

        emit Events.ProfileCreated(profileId, msg.sender, vars.to, vars.handle, block.timestamp);
    }

    function attachLinklist(
        uint256 linklistId,
        uint256 profileId,
        address account,
        address _linklist,
        mapping(uint256 => mapping(bytes32 => uint256)) storage _attachedLinklists,
        mapping(uint256 => EnumerableSet.Bytes32Set) storage _linkTypesByProfile
    ) external {
        bytes32 linkType = ILinklist(_linklist).getLinkType(linklistId);
        ILinklist(_linklist).setTakeOver(linklistId, account, profileId);
        _attachedLinklists[profileId][linkType] = linklistId;
        _linkTypesByProfile[profileId].add(linkType);

        emit Events.AttachLinklist(linklistId, profileId, linkType);
    }

    function detachLinklist(
        uint256 linklistId,
        uint256 profileId,
        address _linklist,
        mapping(uint256 => mapping(bytes32 => uint256)) storage _attachedLinklists,
        mapping(uint256 => EnumerableSet.Bytes32Set) storage _linkTypesByProfile
    ) external {
        bytes32 linkType = ILinklist(_linklist).getLinkType(linklistId);
        _attachedLinklists[profileId][linkType] = 0;
        _linkTypesByProfile[profileId].remove(linkType);

        emit Events.DetachLinklist(linklistId, profileId, linkType);
    }

    function setSocialToken(
        uint256 profileId,
        address tokenAddress,
        mapping(uint256 => DataTypes.Profile) storage _profileById
    ) external {
        require(_profileById[profileId].socialToken == address(0), "SocialTokenExists");

        _profileById[profileId].socialToken = tokenAddress;

        emit Events.SetSocialToken(msg.sender, profileId, tokenAddress);
    }

    function setProfileLinkModule(
        uint256 profileId,
        address linkModule,
        bytes calldata linkModuleInitData,
        DataTypes.Profile storage _profile
    ) external {
        _profile.linkModule = linkModule;

        bytes memory returnData;
        if (linkModule != address(0)) {
            returnData = ILinkModule4Profile(linkModule).initializeLinkModule(
                profileId,
                linkModuleInitData
            );
        }
        emit Events.SetLinkModule4Profile(profileId, linkModule, returnData, block.timestamp);
    }

    function setHandle(
        uint256 profileId,
        string calldata newHandle,
        mapping(bytes32 => uint256) storage _profileIdByHandleHash,
        mapping(uint256 => DataTypes.Profile) storage _profileById
    ) external {
        _validateHandle(newHandle);

        // set new handle
        bytes32 handleHash = keccak256(bytes(newHandle));
        require(_profileIdByHandleHash[handleHash] == 0, "HandleExists");

        // remove old handle
        string memory oldHandle = _profileById[profileId].handle;
        bytes32 oldHandleHash = keccak256(bytes(oldHandle));
        delete _profileIdByHandleHash[oldHandleHash];

        _profileIdByHandleHash[handleHash] = profileId;

        _profileById[profileId].handle = newHandle;

        emit Events.SetHandle(msg.sender, profileId, newHandle);
    }

    function _validateHandle(string calldata handle) private pure {
        bytes memory byteHandle = bytes(handle);
        require(
            byteHandle.length >= Constants.MIN_HANDLE_LENGTH &&
                byteHandle.length <= Constants.MAX_HANDLE_LENGTH,
            "HandleLengthInvalid"
        );

        uint256 byteHandleLength = byteHandle.length;
        for (uint256 i = 0; i < byteHandleLength; ++i) {
            require(
                (byteHandle[i] <= "9" && byteHandle[i] >= "0") ||
                    (byteHandle[i] <= "z" && byteHandle[i] >= "a") ||
                    byteHandle[i] == "-" ||
                    byteHandle[i] == "_",
                "HandleContainsInvalidCharacters"
            );
        }
    }
}
