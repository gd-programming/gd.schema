@0xb01864dba3141a3b;

using import "../option.capnp".Option;
using import "artist.capnp".ArtistAPI;

struct SongAPI {
    id @0 :UInt32;
    name @1 :Text;
    artist @2 :ArtistAPI;
    size @3 :Float32;
    url @4 :Option(Text);
    priority @5 :UInt32;
}
