@0xb440d4a7ebbc1e92;

using import "../aliases/color.capnp".Color;
using import "../aliases/enum.capnp".EnumValue;
using import "aliases/id.capnp".ColorChannelId;
using import "aliases/opacity.capnp".Opacity;
using import "aliases/opacity.capnp".OptionOpacity;
using import "hsv.capnp".Hsv;

struct PlayerColor {
    color @0 :EnumValue;
    opacity @1 :Opacity;
}

struct NormalColor {
    color @0 :Color;
    opacity @1 :Opacity;
}

struct CopiedColor {
    id @0 :ColorChannelId;
    hsv @1 :Hsv;
    opacity @2 :OptionOpacity;
}

struct ColorChannel {
    id @0 :ColorChannelId;
    union {
        player @1 :PlayerColor;
        normal @2 :NormalColor;
        copied @3 :CopiedColor;
    }
    blending @4 :Bool;
}
