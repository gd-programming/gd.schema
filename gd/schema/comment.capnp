@0xa33c26ceeb45eeef;

using import "option.capnp".Option;
using import "user.capnp".User;

struct CommentLevelReference {
    id @0 :UInt32;
    record :union {
        some @1 :UInt8;
        none @2 :Void;
    }
}

struct Comment {
    id @0 :UInt32;
    author @1 :User;
    rating @2 :Int32;
    content @3 :Text;
    createdAt @4 :UInt64;
    color @5 :UInt32;
    level @6 :Option(CommentLevelReference);
}
