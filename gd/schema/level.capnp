@0xea1c9d34d3f009fd;

using import "option.capnp".Option;
using import "song.capnp".SongReference;
using import "user.capnp".UserReference;

struct Level {
    id @0 :UInt32;
    name @1 :Text;
    description @2 :Option(Text);
    user @3 :UserReference;
    song @4 :SongReference;
    data @5 :Data;
    # ...
}
