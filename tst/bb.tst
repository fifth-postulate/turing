#############################################################################
##
## bb.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local machine
gap> START_TEST("turing package: bb.tst");
gap> LoadPackage("turing", false);;

# Test machine creation from standard representation
gap> machine := TmBB("0RB1LD_1LC1RB_1LD1RE_1LA1LE_1LZ0RC");
<machine q1 <tape empty>>

# Let the machine run its course.
gap> TmRun(machine);;
gap> TmStepCount(machine);
47176870
