## GCC helper scripts

These scripts demonstrate some of the material I covered in my
Recon 2012 talk on RTTI and exceptions implementations in compilers.
They are pretty basic and are not production quality.


* gcc_rtti.py tries to find and rename RTTI structures, and shows
the list of classes with their ancestors.

* gcc_extab.py parses and formats the .eh_frame or __eh_frame segment
and any linked LSDAs. It assumes that the LSDAs use GCC's "v0" format.

* parse_exidx.py parses the .ARM.exidx section and creates offsets
to the functions and exception data. To use it with ELF files, you
need to load the ELF in manual mode and load .ARM.exidx explicitly
(it's not loaded by default).


The scripts have been tested with IDA 6.3. They are released under
three-clause BSD [license](LICENSE)
