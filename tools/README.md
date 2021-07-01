# Tools
## swap-libs-audit

This is a very simple ld_audit library that looks for a environment
variable called SWAP_LIB_FILENAME that points to a file which has a
list of libraries that should be replaced. The file format is
extremely simple each line should have the name of a library and the
one that should replace it.

The point of this utility is to allow a user to actually test false
positives and false negatives and see what happens when you run them.
