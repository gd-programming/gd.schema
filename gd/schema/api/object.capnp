@0xfb858fb992d10849;

using import "../aliases/enum.capnp".EnumValue;
using import "../aliases/color.capnp".Color;
using import "../option.capnp".Option;
using import "aliases/duration.capnp".Duration;
using import "aliases/id.capnp".BlockId;
using import "aliases/id.capnp".CoinId;
using import "aliases/id.capnp".ColorChannelId;
using import "aliases/id.capnp".GroupId;
using import "aliases/id.capnp".ItemId;
using import "aliases/id.capnp".ObjectId;
using import "aliases/id.capnp".LinkId;
using import "aliases/opacity.capnp".Opacity;
using import "aliases/opacity.capnp".OptionOpacity;
using import "hsv.capnp".Hsv;

struct ObjectTransform {
    hFlipped @0 :Bool;
    vFlipped @1 :Bool;
    rotation @2 :Float32;
    scale @3 :Float32;
}

struct ObjectVisual {
    doNotFade @0 :Bool;
    doNotEnter @1 :Bool;
    disableGlow @2 :Bool;
}

struct ObjectZ {
    layer @0 :Int8;
    order @1 :Int16;
}

struct ObjectEditorLayers {
    base @0 :UInt16;
    additional @1 :UInt16;
}

struct ObjectColors {
    baseId @0 :UInt16;
    detailId @1 :UInt16;
    baseHsv @2 :Hsv;
    detailHsv @3 :Hsv;
}

struct ObjectSpecial {
    checked @0 :Bool;
    unknown @1 :Bool;
    highDetail @2 :Bool;
    groupParent @3 :Bool;
}

struct StartPositionOptions {
    gameMode @0 :EnumValue;
    miniMode @1 :Bool;
    speed @2 :EnumValue;
    dualMode @3 :Bool;
    flipGravity @4 :Bool;
}

struct SecretCoinOptions {
    coinId @0 :CoinId;
}

struct RotatingObjectOptions {
    rotationSpeed @0 :Float32;
    disableRotation @1 :Bool;
}

struct TextOptions {
    content @0 :Text;
}

struct TeleportOptions {
    portalOffset @0 :Float32;
    smooth @1 :Bool;
}

struct PulsatingObjectOptions {
    animationSpeed @0 :Float32;
    randomizeStart @1 :Bool;
}

struct CollisionBlockOptions {
    blockId @0 :BlockId;
    dynamic @1 :Bool;
}

struct TriggerOrbOptions {
    targetGroupId @0 :GroupId;
    activateGroup @1 :Bool;
}

struct OrbOptions {
    multiActivate @0 :Bool;
    union {
        simple @1 :Void;
        trigger @2 :TriggerOrbOptions;
    }
}

struct ItemCounterOptions {
    itemId @0 :ItemId;
}

struct ToggleItemOptions {
    targetGroupId @0 :GroupId;
    activateGroup @1 :Bool;
}

struct PickupItemOptions {
    itemId @0 :ItemId;
    subtractCount @1 :Bool;
}

struct ItemOptions {
    union {
        toggle @0 :ToggleItemOptions;
        pickup @1 :PickupItemOptions;
    }
}

struct PlayerColorTriggerOptions {
    playerColor @0 :EnumValue;
    opacity @1 :Opacity;
}

struct NormalColorTriggerOptions {
    color @0 :Color;
    opacity @1 :Opacity;
}

struct CopiedColorTriggerOptions {
    copiedColorChannelId @0 :ColorChannelId;
    copiedHsv @1 :Hsv;
    opacity @2 :OptionOpacity;
}

struct ColorTriggerOptions {
    targetColorChannelId @0 :ColorChannelId;
    blending @1 :Bool;
    duration @2 :Duration;
    union {
        player @3 :PlayerColorTriggerOptions;
        normal @4 :NormalColorTriggerOptions;
        copied @5 :CopiedColorTriggerOptions;
    }
}

struct AlphaTriggerOptions {
    targetGroupId @0 :GroupId;
    duration @1 :Duration;
    opacity @2 :Opacity;
}

struct TriggerOptions {
    touchTriggered @0 :Bool;
    spawnTriggered @1 :Bool;
    multiTrigger @2 :Bool;

    union {
        color @3 :ColorTriggerOptions;
        alpha @4 :AlphaTriggerOptions;
    }
}

struct AnyObject {
    id @0 :ObjectId;
    x @1 :Float32;
    y @2 :Float32;
    transform @3 :Option(ObjectTransform);
    visual @4 :Option(ObjectVisual);
    z @5 :Option(ObjectZ);
    editorLayers @6 :Option(ObjectEditorLayers);
    colors @7 :Option(ObjectColors);
    special @8 :Option(ObjectSpecial);
    groupIds @9 :List(GroupId);
    union {
        simple @10 :Void;
        startPosition @11 :StartPositionOptions;
        secretCoin @12 :SecretCoinOptions;
        rotatingObject @13 :RotatingObjectOptions;
        text @14 :TextOptions;
        teleport @15 :TeleportOptions;
        pulsatingObject @16 :PulsatingObjectOptions;
        collisionBlock @17 :CollisionBlockOptions;
        orb @18 :OrbOptions;
        itemCounter @19 :ItemCounterOptions;
        item @20 :ItemOptions;
        trigger @21 :TriggerOptions;
    }
}
