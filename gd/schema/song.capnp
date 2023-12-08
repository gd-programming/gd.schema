@0xaea4dea251a81afc;

using Artist = import "artist.capnp".Artist;

struct Song {
    id @0 :UInt32;
    name @1 :Text;
    artist @2 :Artist;
    size :union {
        some @3 :Float32;
        none @4 :Void;
    }
    url :union {
        some @5 :Text;
        none @6 :Void;
    }
}
