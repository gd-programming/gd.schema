@0x83252853124c73c2;

using import "aliases/enum.capnp".EnumValue;
using import "aliases/id.capnp".Id;
using import "aliases/id.capnp".RoleId;
using import "option.capnp".Option;

struct UserReference {
    id @0 :Id;
    name @1 :Text;
    accountId @2 :Id;
}

struct UserStatistics {
    stars @0 :UInt32;
    demons @1 :UInt16;
    diamonds @2 :UInt32;
    userCoins @3 :UInt32;
    secretCoins @4 :UInt16;
    creatorPoints @5 :UInt16;
    rank @6 :UInt32;
}

struct UserCosmetics {
    color1Id @0 :UInt8;
    color2Id @1 :UInt8;
    glow @2 :Bool;
    iconType @3 :UInt8;
    iconId @4 :UInt16;
    cubeId @5 :UInt16;
    shipId @6 :UInt8;
    ballId @7 :UInt8;
    ufoId @8 :UInt8;
    waveId @9 :UInt8;
    robotId @10 :UInt8;
    spiderId @11 :UInt8;
    explosionId @12 :UInt8;
    streakId @13 :UInt8;
    swingId @14 :UInt8;
}

struct UserStates {
    messageState @0 :EnumValue;
    friendRequestState @1 :EnumValue;
    commentState @2 :EnumValue;
    friendState @3 :EnumValue;
}

struct UserSocials {
    youtube @0 :Option(Text);
    x @1 :Option(Text);
    twitch @2 :Option(Text);
    discord @3 :Option(Text);
}

struct User {
    id @0 :Id;
    name @1 :Text;
    accountId @2 :Id;
    roleId @3 :RoleId;
    banned @4 :Bool;
    statistics @5 :Option(UserStatistics);
    cosmetics @6 :Option(UserCosmetics);
    states @7 :Option(UserStates);
    socials @8 :Option(UserSocials);
}
