@0xea1c9d34d3f009fd;

using import "aliases/capacity.capnp".Capacity;
using import "aliases/enum.capnp".EnumValue;
using import "aliases/id.capnp".Id;
using import "aliases/time.capnp".Duration;
using import "aliases/time.capnp".OptionTimestamp;
using import "aliases/rating.capnp".Rating;
using import "aliases/version.capnp".Version;
using import "option.capnp".Option;
using import "password.capnp".Password;
using import "song.capnp".SongReference;
using import "user.capnp".UserReference;

struct Level {
    id @0 :Id;
    name @1 :Text;
    description @2 :Option(Text);
    creator @3 :UserReference;
    song @4 :SongReference;
    data @5 :Option(Data);
    version @6 :Version;
    downloads @7 :UInt32;
    gameVersion @8 :Version;
    rating @9 :Rating;
    length @10 :EnumValue;
    difficulty @11 :EnumValue;
    stars @12 :UInt8;
    requestedStars @13 :UInt8;
    score @14 :UInt32;
    rateType @15 :EnumValue;
    password @16 :Option(Password);
    originalId @17 :Id;
    twoPlayer @18 :Bool;
    capacity @19 :Option(Capacity);
    coins @20 :UInt8;
    verifiedCoins @21 :Bool;
    lowDetail @22 :Bool;
    objectCount @23 :UInt32;
    createdAt @24 :OptionTimestamp;
    updatedAt @25 :OptionTimestamp;
    editorTime @26 :Duration;
    copiesTime @27 :Duration;
    timelyType @28 :EnumValue;
    timelyId @29 :Id;
}
