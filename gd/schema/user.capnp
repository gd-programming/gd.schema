@0x83252853124c73c2;

using import "generics/option.capnp".Option;

struct UserReference {
    id @0 :UInt32;
    name @1 :Text;
    accountId @2 :UInt32;
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
    messageState @0 :UInt8;
    friendRequestState @1 :UInt8;
    commentState @2 :UInt8;
    friendStateid @3 :UInt8;
}

struct UserSocials {
    youtube @0 :Option(Text);
    x @1 :Option(Text);
    twitch @2 :Option(Text);
    discord @3 :Option(Text);
}

struct UserLeaderboard {
    record @0 :UInt8;
    coins @1 :UInt8;
    recordedAt @2 :UInt64;
}

struct User {
    id @0 :UInt32;
    name @1 :Text;
    accountId @2 :UInt32;
    roleId @3 :UInt8;
    banned @4 :Bool;
    place @5 :UInt32;
    statistics @6 :Option(UserStatistics);
    cosmetics @7 :Option(UserCosmetics);
    states @8 :Option(UserStates);
    socials @9 :Option(UserSocials);
    leaderboard @10 :Option(UserLeaderboard);
}
