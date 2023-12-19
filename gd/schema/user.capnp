@0x83252853124c73c2;

using import "aliases/enum.capnp".EnumValue;
using import "aliases/id.capnp".ColorId;
using import "aliases/id.capnp".IconId;
using import "aliases/id.capnp".Id;
using import "aliases/id.capnp".LongIconId;
using import "aliases/id.capnp".RoleId;
using import "aliases/statistics.capnp".CreatorPoints;
using import "aliases/statistics.capnp".Demons;
using import "aliases/statistics.capnp".Diamonds;
using import "aliases/statistics.capnp".Rank;
using import "aliases/statistics.capnp".SecretCoins;
using import "aliases/statistics.capnp".Stars;
using import "aliases/statistics.capnp".UserCoins;
using import "option.capnp".Option;

struct UserReference {
    id @0 :Id;
    name @1 :Text;
    accountId @2 :Id;
}

struct UserStatistics {
    stars @0 :Stars;
    demons @1 :Demons;
    diamonds @2 :Diamonds;
    userCoins @3 :UserCoins;
    secretCoins @4 :SecretCoins;
    creatorPoints @5 :CreatorPoints;
    rank @6 :Rank;
}

struct UserCosmetics {
    color1Id @0 :ColorId;
    color2Id @1 :ColorId;
    glow @2 :Bool;
    iconType @3 :EnumValue;
    iconId @4 :LongIconId;
    cubeId @5 :LongIconId;
    shipId @6 :IconId;
    ballId @7 :IconId;
    ufoId @8 :IconId;
    waveId @9 :IconId;
    robotId @10 :IconId;
    spiderId @11 :IconId;
    explosionId @12 :IconId;
    streakId @13 :IconId;
    swingId @14 :IconId;
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
