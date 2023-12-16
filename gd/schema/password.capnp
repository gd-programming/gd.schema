@0xaa7ac2bc732e054c;

using import "option.capnp".OptionUInt32;

struct Password {
    value @0 :OptionUInt32;
    copyable @1 :Bool;
}
