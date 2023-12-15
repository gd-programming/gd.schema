@0x83252853124c73c2;

struct UserStatistics {
    stars @0 :UInt32;
    demons @1 :UInt16;
    diamonds @2 :UInt32;
    userCoins @3 :UInt32;
    secretCoins @4 :UInt16;
    creatorPoints @5 :UInt16;
    rank @6 :UInt32;
}

struct User {
    id @0 :UInt32;
    name @1 :Text;
    accountId @2 :UInt32;
    roleId @3 :UInt8;
    banned @4 :Bool;
    statistics :union {
        some @5 :UserStatistics;
        none @6 :Void;
    }
}
