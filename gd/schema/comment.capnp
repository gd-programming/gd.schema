@0xa33c26ceeb45eeef;

using import "aliases/color.capnp".Color;
using import "aliases/id.capnp".Id;
using import "aliases/record.capnp".OptionRecord;
using import "aliases/statistics.capnp".Rating;
using import "aliases/time.capnp".Timestamp;
using import "level.capnp".LevelReference;
using import "option.capnp".Option;
using import "user.capnp".UserReference;

struct CommentLevelReference {
    level @0 :LevelReference;
    record @1 :OptionRecord;
}

struct Comment {
    id @0 :Id;
    author @1 :UserReference;
    content @2 :Text;
    color @3 :Color;
    rating @4 :Rating;
    createdAt @5 :Timestamp;
    reference @6 :Option(CommentLevelReference);
}
