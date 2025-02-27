# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Generated by [`auto-changelog`](https://github.com/CookPete/auto-changelog).

## [v2.1.0](https://github.com/Crossbell-Box/Crossbell-Contracts/compare/v2.0...v2.1.0) - 2022-06-20

### Commits

- feat: refactor and support deleteNote [`d831f7e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d831f7ebd21206bb4838f4ed51a40fa84728fcea)
- refactor: use struct as function params [`a20511f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a20511f5fe903d35e819bd3eae8e2976b4a42103)
- feat: add LinkLogic library [`7a79087`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/7a79087c75132b50f544d99cf35846417b356fdd)
- feat: use unlink struct for unlinkAddress and unlinkLinklist [`48d31b8`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/48d31b8a9d782dc21b3a54901f90e7bac01f4d0e)
- feat: add setNoteUri and freezeNote [`56327de`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/56327de93647716ee34902955f2c4be37a95c32b)
- fix: detach linklist in profile transfer hooks [`363552a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/363552a79f08a46311c077bd53df12aa40da1c4f)
- feat: modify event and interfaces for postNote4Link [`2359efa`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/2359efa988e047a136b0db52285d0921a8b98a95)
- feat: rename freeze [`c612d3f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/c612d3f80dfc65ca9896a12c5785520a7a6e729b)
- refactor: rename [`3522e2a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/3522e2a54effbb1646d5f5b87ab5fdb0845d2b76)
- refactor: move unlink operations into library [`8fa52cf`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/8fa52cf5a86fb0a937a1b0bc3bfccb05ab113223)
- feat: remove linklistId from note struct [`62ad131`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/62ad131f9740dfbbb0ccaf33a6600b63f3546910)
- feat: reserve handle for ens and rns [`f494601`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f4946018889be743849e191abf75529879248903)
- feat: add more slot storage for linklist, add upgrade script [`41ef041`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/41ef041782289e304272f9c38a934595073b0994)
- feat: rename dispatcher and fix linklist transfer [`641ed2d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/641ed2dadb35d39205608bc8ab262cf1aeb80c6f)
- feat: refactor resolver and add unit tests [`d1462dc`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d1462dc2d9eaeb90fbd20e1360ac406682e394b4)
- refactor [`7652795`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/7652795ab8fc2c7d760c24f3280dff043742b515)
- feat: add Dispatcher [`a305a1d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a305a1d4d926a5b6bf203ea94e5660a4262f2938)
- feat: user cannot link or mint a non-existent or deleted note [`245011d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/245011dca22880164542929ee6921e75ac8cf184)
- feat: add getNotesByProfileId [`ec477f0`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/ec477f0321abb554bc22b667c84a1610cdc0eed9)
- feat: add getLinkingx interfaces [`b0800f2`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b0800f2d6d166cd87ed1f30734a044b5ce0ab8d2)
- feat: modify function params for post with link [`e24599b`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e24599bbde56b93d76281bb5b25d79c4d14ec196)
- refactor: move setLinkModule to library [`a23f250`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a23f2503538392eee7891fd1f3e3507717cfe42a)
- feat: use struct for function params [`b1f175b`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b1f175b91f29d705136e197110fc432d6e411ae2)
- feat: add getLinking items for periphery [`843128a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/843128ab54cff9255b53dc8e4dfe3767e59838e9)
- feat: emit DeleteNote [`4a14334`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/4a14334e7340797f364e60ec8afc93aedb56efe7)
- feat: rename link item type [`2d39428`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/2d394283acf87d5ac99971c343660706ab9b1292)
- feat: _validateLinklistAttached for unlink [`d9bb5fa`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d9bb5fa14c2cf9a75af385a97c415efa7d99c1da)
- feat: add getLinkingNotes and getLinkingERC721s [`28969c1`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/28969c1958a33f4cbd57b3437985cc185984d97c)
- refactor: refactor for storage upgrade [`2501210`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/250121019799b9bbafdec1aadd26a11d1d34f555)
- feat: add createProfileThenPostNote for periphery [`f6ae8a4`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f6ae8a484e6825cbbf9ae438ec2de8ce7aca3bd4)
- feat: limit the minimum handle length to 3 [`64fd616`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/64fd61682d2854eaab2aee290ccd49f927b310b2)
- feat: add linkKeyType for linkllist [`96aefbb`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/96aefbbe93f866faeba5cc2dd48b02a15018a99e)
- feat: support single linking item query for web3Entry [`01330e0`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/01330e085833f68774e65ffa537d0caa6c625c7b)
- feat: support single linking item query for linklist [`436a007`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/436a00753371b862cf2be38cbb00f9b79af1887b)
- feat: periphery deploy script [`e9eb80d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e9eb80dadf32837655cbfd2fcb757e78687a5670)
- feat: add periphery upgrade script [`b3c401e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b3c401e71a68296142e029c53489f81f98172409)
- feat: move getNotesByProfileId to periphery [`c0b52ad`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/c0b52ad15f1240358bc0e1feaed2dc612eab616b)
- feat: modify linkProfilesInBatch [`f17f354`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f17f3540398a6bc967eb7d9ea89df28bc83db68b)
- feat: modify query params for getLinking items [`ce35649`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/ce3564945cf2485741039a8afb37ce0f4e7127ad)
- feat: add Periphery [`626807f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/626807fce5cfe514f0f533e35eef6cc4c884ec28)
- feat: locked note cannot be set link or mint module [`d548c3b`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d548c3bcbdd0789672664292b7877bae7ad085e3)
- feat: add oldProfileId for Events.SetPrimaryProfileId [`037afae`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/037afae5b56a912460d85bded54d342fc5fbcd41)
- feat: update test for process link [`4910d91`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/4910d910060e315c2ceeccbdecf8811d41a58a15)
- refactor: move setNoteUri to library [`a1e815c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a1e815c60ebb07156f9793fd6bc6315c3efec5db)
- feat: add try catch on process link [`d928cb1`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d928cb1e2343979aa00346d382af43f9bf513ad0)
- feat: update postNote event [`ef205c9`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/ef205c96cb639fd00f26a6031ed3149f19f02503)
- fix: fix getNotesByProfileId [`c91822a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/c91822a263f1249e59276ed020a50e65b0d27d92)
- feat: clear profile on burn [`3b16f6c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/3b16f6c386c0f96fe04c1955834f169055481b1d)

## [v2.0](https://github.com/Crossbell-Box/Crossbell-Contracts/compare/v1.0...v2.0) - 2022-05-12

### Commits

- feat: use v2 and add modify linkmodule for note [`aba06c2`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/aba06c20fde0efd484847b0a4624840e6cc9b651)
- feat: disable "." for handle [`9c3c923`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/9c3c923eb9a9bd4b12751a92c15ffc1c7a534313)

## v1.0 - 2022-05-12

### Commits

- feat: add build info [`75ce574`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/75ce57463929ec146b24963e6edf35368ff260ff)
- feat: merge and fix some test cases [`315abad`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/315abad6690cbfdded4eb761a3bedf1e9d958ea8)
- feat: update build-info [`8eb22df`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/8eb22df2d1b1c7f39dc5e12236d2f6ece3f6d706)
- feat: add link profile tests [`a850e6c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a850e6c0a5e33f3590fb04ae6c7ad3860ed26126)
- feat: update build-info [`51c6ce1`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/51c6ce163f3e178b5476df0cbfb33ec33fb1be25)
- feat: add test for link and createThenLink [`b3a03bf`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b3a03bf91ee621993e694938a181f7bfcd37355f)
- feat: use library to reduce bytecode size [`f361322`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f361322cadfd2752600218e0babea42e6d74830f)
- refactor: refactor and use PostLogic library [`10fad44`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/10fad449cbc1be9ca4ba6186209c17ea75a11d92)
- feat: post note for link [`4490291`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/44902912ce3e587b45ad377d54e1344f4591c747)
- fix: fix createThenLinkProfile handle [`d94ed4e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d94ed4ea06a84e10475f5204733221a4366d0875)
- feat: check linkmodule [`3328c4e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/3328c4ea2784b5f0f13a51adf27647a9140faa3e)
- feat: refactor and validate handle [`e920c32`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e920c32e2802ee445fdf1a19510ca56e148686c7)
- feat: linkAny and unlinkAny [`b2937f8`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b2937f84a1ba7b6fb5aaca7d23e7fc11c9a62d90)
- feat: linkLinklist and unlinkLinklist [`e890374`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e8903746ee1345462d9b6e484398e046f176aaf1)
- feat: linkAddress and unlinkAddress [`fa6148a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/fa6148a26a51deb4514754487205aa7c4e915aab)
- feat: remove link link [`e65fe2b`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e65fe2b87b9e9653f8dbf66471a3cac76740b069)
- feat: do not validate default handle, and refactor [`0dd254b`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/0dd254be66283e3148642d663ca20cc0ebe69d76)
- refactor [`b888cc6`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/b888cc67370d64626ea1695e31ed8a68ed6a1bbd)
- feat: add verify script [`1225bbf`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/1225bbfbc1aa9d1ffe0d2e27900e51898821b511)
- refactor: rename [`1693f0c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/1693f0c1055fb1cde27eebaeea48d4c4f7194420)
- feat: add upgrade script [`28d7f74`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/28d7f74c364bfb601d9d09c67dfb950121acfabb)
- feat: setLinkModule4ERC721 [`5ebe6a1`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/5ebe6a1169a3da2eb20e9b99d01b97d4a18ead16)
- feat: add test case for postNote [`624d887`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/624d887108d38752ff801c5feaaa24cc012b10d0)
- fix: fix compile [`36dc1ba`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/36dc1bae8b19ec6edf9050e31248e183e186a29a)
- feat: update hardhat config for crossbell [`6bf783e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/6bf783e5af0c60a90bc97e908a5542133b884e6c)
- feat: add getRevision [`21ac524`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/21ac5240193d980526145e817500ab92502da2fb)
- feat: merge with latest [`47b9fec`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/47b9fecab787528cf023e75d3db52f2f32fc48f4)
- feat: add AttachLinklist and DetachLinklist event [`db11034`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/db110344fc826a96b0c3c3be23da0684e0dad38e)
- feat: merge with latest [`8b01cc0`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/8b01cc0daa8c100ee726a284b1e83bf7cd1364d3)
- refactor [`c837ca1`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/c837ca19d7cf1698665d398605abf283c4b51f91)
- doc: add sample metadata [`8169d21`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/8169d212b3037b289e35d964302f50de5c029d08)
- feat: update deploy script [`7b14791`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/7b14791d4b49f961b72f4820c887b833caf2769d)
- feat: add getNote [`9a53d1e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/9a53d1ed303a622180b7da48f6859d201c99a380)
- feat: use _setProfileLinkModule [`aa2a7af`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/aa2a7af2973ca2fbc50df63ecfa87ba58ec53023)
- feat: modify deploy script [`8a96740`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/8a96740df5a35eb0ad41f70a7194b331dcc019ae)
- fix: fix test cases [`0a00b01`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/0a00b01d4afc8e1afdeac83552be8408218b5612)
- fix: fix mintNFT mint [`f862f28`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f862f283bb6cd1287f3a78cf0d1b7e0211327d86)
- fix: fix compile [`6229b94`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/6229b949c810d21eeb0ed0440d8afcf14d8df6a6)
- feat: merge with latest [`58021df`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/58021df256d3ade323d7b4815dd0d4977bb5470d)
- feat: add source code [`c9e73ca`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/c9e73ca1e9dbf74069db2fe888240cc7b7664654)
- feat: add build info [`581119c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/581119c38461f577e3e465deff0c6dd43b713010)
- style: format [`525b732`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/525b732629d6e6cf216894c86eba77c3a4ac0061)
- style: format [`23bcaa0`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/23bcaa090e4ab731001bb74b6aeb7e9ee9dc1a12)
- feat: add createThenLink method [`fabe145`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/fabe1455c5db9f03dffb913a5e823b802664e35e)
- feat: add interfaces and social token for profile [`00bfaae`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/00bfaaef23187f97121d10059014e340021fefba)
- feat: add linkModule and mintModule [`11b0d6d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/11b0d6d5bdc77c907d42f996c3160299ede4dcef)
- feat: finish linklist [`18d55e4`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/18d55e4f5c112cc167938e51a624e4e429a24fee)
- feat: linkProfileLink and unlinkProfileLink [`e1f6c14`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e1f6c1478c5499e8fb66341340c8a97a651f9ed8)
- feat: move links from web3 entry to link list nft [`a559d2e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/a559d2e5475571f33284d9fa12caa4ea50f2b6b4)
- feat: add mint and link module [`1728423`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/172842302f75f51bd50a48109523667b204849be)
- feat: rename methods for link list [`5caf398`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/5caf398e74f57d9c415af62e1c4b6269fa00e1c4)
- feat: add linkNote and unlinkNote [`0dfba9e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/0dfba9e2806dec513301a0464ed2a6f8718054cf)
- feat: add get interfaces [`2e138d4`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/2e138d43991d438b68c9a62eb2585d710ff178dd)
- feat: linkERC721 [`2efa72d`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/2efa72d917908f4ee9e3d342ee7db70639f5911d)
- feat: add link module for address and refactor [`4af6ba3`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/4af6ba3c21ff1621ed0fe9d1f2b7dea7c1d07ad1)
- feat: add implementation for mintNote [`9b05125`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/9b0512571e2bc85680527ff61e6fa87555e4158a)
- feat: use require and use NFTBase [`95c176f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/95c176f677eecf3ecffe7d08a97b83db7074056b)
- feat: add proxyAdmin [`19c0f56`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/19c0f563991253af61668a511a29d904bc533ebc)
- feat: use incrementing token id for linklist and add transfer hook [`52b8012`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/52b8012a585a2c3a820bf6f4bf36919fa425f85e)
- feat: rename LinkList and add linkmodule for createProfile [`edb94dd`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/edb94ddaf365be8a7a95a076c7fc8cb938ef836c)
- feat: use storage for linklist [`387341f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/387341f262a890a07c098208bfd574356b392a42)
- feat: add UIDataProvider [`ee2b146`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/ee2b14637ae3b6418e48b01addabc63bf38c9218)
- feat: modify deploy [`75fc17e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/75fc17e3ce7980264eecdef891ccc78f4d4ccaae)
- feat: rename and add profileId for getProfile [`e549fb5`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/e549fb5aaa6212f4a4d128f394b9d5337ad32a73)
- feat: add post note [`4dfcccf`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/4dfcccf3a19881a0ad87a0f6317972ed22b87174)
- feat: unlinkERC721 [`f82afd6`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f82afd651a3e3c9570c5be94955f0605766087c9)
- feat: add getLinkedProfiles for Web3Entry [`483053f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/483053fa09c8f08bfaed692fd74e622fb19b958b)
- fix: fix compile and rename LinkList to Linklist [`67bb61c`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/67bb61c973ebbb977ba7ca66a5af7f595d468184)
- feat: use oz initializer [`d01cba4`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/d01cba403427504c7f16b5373c85094e60c42ba2)
- feat: use public Web3Entry for MintNFT and Linklist [`728df3e`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/728df3e86d8fc68082852ed536b4937facce1f0f)
- feat: add initialize for IWeb3Entry and add link interfaces [`f60ded9`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/f60ded9f4e7f87049979368fed0b81f3fcd13d93)
- feat: use 4 instead of for [`9dbea54`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/9dbea547c2368a2e6d6af0d7427146ae96489476)
- feat: handle primaryProfileB for create and transfer [`aade557`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/aade5577a6f1aff5bbcec590d26ed0e089012c7d)
- feat: rename socialToken [`934072a`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/934072a697b1522ac75e5ccaff82e2cac2956cd8)
- fix: change LinkList to Linklist [`eb94c32`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/eb94c3267987caa23db73c6dbe882c54a713e4ce)
- feat: finish deploy script [`1dd0c75`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/1dd0c7575372740ec73b07425184649aebf93b51)
- merge: merge with conflicts [`3d06c5f`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/3d06c5fa8bd9d87c05edd6f27776be6cfefe878f)
- fix [`ea00b53`](https://github.com/Crossbell-Box/Crossbell-Contracts/commit/ea00b53292913dbba4c980a64f5859e105b64760)
