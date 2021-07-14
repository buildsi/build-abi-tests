# Stability Tests

This is an example of parsing Smeagle output, the two .yaml files in this folder,
to calculate a stability test. There are two versions:

 - [asp](asp)
 - [python](python)
 
## Algorithm

- Define A as [libmath-v1.0.0.so.yaml](python/libmath-v1.0.0.so.yaml) or [libmath-v1.so.lp](asp/libmath-v1.so.lp)
- Define B as [libmath-v2.0.0.so.yaml](python/libmath-v2.0.0.so.yaml) or [libmath-v2.so.lp](asp/libmath-v2.so.lp)


A and B are two instances of the same library. Can B replace A?

- We’ll define Exported(BinSet), Imported(BinSet), Dependencies(Bin) as:
  - Let Exported(BinSet) be a set of interface/type/locations triples exported by a set of binaries: {i, type, loc : abi_location(bin, i, "Export", type, loc)  bin  BinSet,}.
  - Let Imported(BinSet) be a set of interface/type/location triples imported by some binary: {i, type, loc : abi_location(bin, i, "Import", type, loc)  bin  BinSet}.
  - Let Dependencies(Bin) be the set of binaries that binary Bin depends on. 
- We’ll say B can safely replace A if:
  - Exported({A}) Exported({B}) -and- Imported({B}) Imported({A}) Exported(Dependencies(B))
