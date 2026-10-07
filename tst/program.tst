#############################################################################
##
## program.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local program
gap> START_TEST("turing package: program.tst");
gap> LoadPackage("turing", false);;

# Test program creation
gap> program := TmProgram();
<program empty>

# Addition of a rule
gap> TmAddRule(program, TmState(1), TmSymbol('I'), TmState(2), TmBlank(), TmRight());;
gap> program;
<program with 1 rule>

# Addition of an other rule
gap> TmAddRule(program, TmState(2), TmSymbol('I'), TmState(2), TmSymbol('I'), TmRight());;
gap> program;
<program with 2 rules>
