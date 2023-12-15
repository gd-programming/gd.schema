@0xeb50502d690763c0;

struct Option(T) {
    union {
        some @0 :T;
        none @1 :Void;
    }
}
