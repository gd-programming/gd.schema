@0xcaf19768729afafd;

using import "aliases/id.capnp".OptionId;

struct Artist {
    id @0 :OptionId;
    name @1 :Text;
    verified @2 :Bool;
}
