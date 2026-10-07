#############################################################################
##
## state.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local state
gap> START_TEST("turing package: state.tst");
gap> LoadPackage("turing", false);;

# Test state creation
gap> state := TmState(1);
q1

# Two states with same index are equal
gap> state = TmState(1);
true
