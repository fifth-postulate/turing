#############################################################################
##
## tape.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local tape
gap> START_TEST("turing package: tape.tst");
gap> LoadPackage("turing", false);;

# Test tape creation
gap> tape := TmTape();
<tape empty>
