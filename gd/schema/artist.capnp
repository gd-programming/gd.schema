@0xcaf19768729afafd;

struct Artist {
    id :union {
        some @0 :UInt32;
        none @1 :Void;
    }
    name @2 :Text;
}
