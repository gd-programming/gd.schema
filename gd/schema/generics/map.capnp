@0xeab66ad088c2fe25;

struct Map(K, V) {
    entries @0 :List(Entry);

    struct Entry {
        key @0 :K;
        value @1 :V;
    }
}
