@0xbc24b7b4fc694ae9;

using import "aliases/statistics.capnp".Demons;

struct DemonInfoGroup {
    easy @0 :Demons;
    medium @1 :Demons;
    hard @2 :Demons;
    insane @3 :Demons;
    extreme @4 :Demons;
}

struct DemonInfoSpecial {
    weekly @0 :Demons;
    gauntlet @1 :Demons;
}

struct DemonInfo {
    regular @0 :DemonInfoGroup;
    platformer @1 :DemonInfoGroup;
    special @2 :DemonInfoSpecial;
}
