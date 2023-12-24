@0xc7c81742162b8987;

using import "aliases/duration.capnp".Duration;
using import "aliases/record.capnp".Record;

struct EitherRecord {
    union {
        regular @0 :Record;
        platformer @1 :Duration;
    }
}
