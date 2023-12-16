@0xaea4dea251a81afc;

using import "artist.capnp".Artist;
using import "generics/option.capnp".Option;

struct SongReference {
    id @0 :UInt32;
    custom @1 :Bool;
}

struct Song {
    id @0 :UInt32;
    name @1 :Text;
    artist @2 :Artist;
    size @3 :Float32;
    url @4 :Option(Text);
}
