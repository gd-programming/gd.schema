@0xa2a454d3b34ab52c;

struct Artist {
    name @0 :Text;
    verified @1 :Bool;
    id :union {
        some @2 :UInt32;
        none @3 :Void;
    }
}
