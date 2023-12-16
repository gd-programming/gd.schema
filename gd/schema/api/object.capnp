@0xfb858fb992d10849;

using import "../aliases/enum.capnp".EnumValue;
using import "../option.capnp".Option;
using import "aliases/id.capnp".GroupId;
using import "aliases/id.capnp".ObjectId;
using import "aliases/id.capnp".LinkId;
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

struct StartPosition {
    gameMode @0 :EnumValue;
    miniMode @1 :Bool;
    speed @2 :EnumValue;
    dualMode @3 :Bool;
    flipGravity @4 :Bool;
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
        startPosition @11 :StartPosition;
    }
}
