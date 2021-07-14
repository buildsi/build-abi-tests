# Python Stability Tests

## Usage

```bash
#                           Library A              Library B
$ ./run-stability-test test libmath-v1.0.0.so.yaml libmath-v2.0.0.so.yaml
```

And the result

```bash
$ ./run-stability-test test libmath-v1.0.0.so.yaml libmath-v2.0.0.so.yaml 
INFO:root:Checking if Exported({A}) ⊆ Exported({B}): yes
INFO:root:Checking if Imported({B}) ⊆ Imported({A}): no
Interface(InterfaceName='_ZN11MathLibrary10Arithmetic3AddEii', InterfaceType='function', Name='a', Type='Integer32', Location='%rdi', Direction='import')
Interface(InterfaceName='_ZN11MathLibrary10Arithmetic3AddEii', InterfaceType='function', Name='b', Type='Integer32', Location='%rsi', Direction='import')

```

## Notes

 - This is currently not accounting for dependencies - note that the second rule above includes looking at `Exported(Dependencies(A))` and we don't have that context here.
 - This is also not doing any intelligent comparison of attributes, but just looking for the entire interface definition as presented (as the model describes)
 - This script can be modified as the ability to define interfaces other than functions is added.
 - The data files from Smeagle 0.0.0 were modified to have quotes around variables (and this bug has been [fixed](https://github.com/buildsi/Smeagle/pull/35))
