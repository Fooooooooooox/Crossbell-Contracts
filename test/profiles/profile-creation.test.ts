import { expect } from "chai";
import { ethers } from "hardhat";
import {
    FIRST_LINKLIST_ID,
    FIRST_PROFILE_ID,
    makeSuiteCleanRoom,
    MOCK_PROFILE_HANDLE,
    MOCK_PROFILE_URI,
    SECOND_PROFILE_ID,
    userAddress,
    userTwo,
    userTwoAddress,
    web3Entry,
} from "../setup.test";
import { getTimestamp, makeProfileData, matchEvent } from "../helpers/utils";
import { ERRORS } from "../helpers/errors";
import { CreateProfileData, ProfileData } from "../helpers/types";
import { BigNumber } from "ethers";

makeSuiteCleanRoom("Profile Creation", function () {
    context("Generic", function () {
        context("Negatives", function () {
            it("User should fail to create profile with handle length > 31", async function () {
                const handle = "da2423cea4f1047556e7a142f81a7eda";
                expect(handle.length).to.gt(31);
                await expect(web3Entry.createProfile(makeProfileData(handle))).to.be.revertedWith(
                    "HandleLengthInvalid"
                );
            });

            it("User should fail to create profile with empty handle", async function () {
                await expect(
                    web3Entry.createProfile({
                        to: userAddress,
                        handle: "",
                        uri: MOCK_PROFILE_URI,
                        linkModule: ethers.constants.AddressZero,
                        linkModuleInitData: [],
                    })
                ).to.be.revertedWith("HandleLengthInvalid");
            });

            it("User should fail to create profile with handle too short", async function () {
                await expect(
                    web3Entry.createProfile({
                        to: userAddress,
                        handle: "a",
                        uri: MOCK_PROFILE_URI,
                        linkModule: ethers.constants.AddressZero,
                        linkModuleInitData: [],
                    })
                ).to.be.revertedWith("HandleLengthInvalid");

                await expect(
                    web3Entry.createProfile({
                        to: userAddress,
                        handle: "ab",
                        uri: MOCK_PROFILE_URI,
                        linkModule: ethers.constants.AddressZero,
                        linkModuleInitData: [],
                    })
                ).to.be.revertedWith("HandleLengthInvalid");
            });

            it("User should fail to create profile with invalid handle", async function () {
                const arr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()+|[]:",'.split("");
                for (const c of arr) {
                    await expect(
                        web3Entry.createProfile({
                            to: userAddress,
                            handle: c + "ab",
                            uri: MOCK_PROFILE_URI,
                            linkModule: ethers.constants.AddressZero,
                            linkModuleInitData: [],
                        })
                    ).to.be.revertedWith("HandleContainsInvalidCharacters");
                }
            });
        });

        context("Scenarios", function () {
            it("User should create profile with handle length == 31", async function () {
                await expect(
                    web3Entry.createProfile(makeProfileData("_b2423cea4f1047556e7a14-f1-eth"))
                ).to.not.be.reverted;
            });
            it(`User should be able to create a profile with a handle, uri,
                receive an NFT, and the handle should resolve to the NFT ID,
                and userTwo should do the same.`, async function () {
                let profileData: CreateProfileData;
                let owner: string;
                let totalSupply: BigNumber;
                let profile: ProfileData;

                profileData = makeProfileData();
                await expect(web3Entry.createProfile(profileData)).to.not.be.reverted;

                owner = await web3Entry.ownerOf(FIRST_PROFILE_ID);
                totalSupply = await web3Entry.totalSupply();
                profile = await web3Entry.getProfileByHandle(MOCK_PROFILE_HANDLE);

                expect(owner).to.eq(userAddress);
                expect(totalSupply).to.eq(FIRST_PROFILE_ID);
                expect(profile.profileId).to.equal(FIRST_PROFILE_ID);
                expect(profile.handle).to.equal(MOCK_PROFILE_HANDLE);
                expect(profile.uri).to.equal(MOCK_PROFILE_URI);

                const testHandle = "handle-2";
                profileData = makeProfileData(testHandle, userTwoAddress);
                await expect(
                    web3Entry.connect(userTwo).createProfile(profileData)
                ).to.not.be.reverted;

                owner = await web3Entry.ownerOf(SECOND_PROFILE_ID);
                totalSupply = await web3Entry.totalSupply();
                profile = await web3Entry.getProfileByHandle(testHandle);

                expect(owner).to.eq(userTwoAddress);
                expect(totalSupply).to.eq(SECOND_PROFILE_ID);
                expect(profile.profileId).to.equal(SECOND_PROFILE_ID);
                expect(profile.handle).to.equal(testHandle);
                expect(profile.uri).to.equal(MOCK_PROFILE_URI);
            });

            it("User should create a profile for userTwo", async function () {
                await expect(
                    web3Entry.createProfile(makeProfileData(MOCK_PROFILE_HANDLE, userTwoAddress))
                ).to.not.be.reverted;
                expect(await web3Entry.ownerOf(FIRST_PROFILE_ID)).to.eq(userTwoAddress);
            });
        });
    });
});
