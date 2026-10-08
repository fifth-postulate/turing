#############################################################################
##
## machine.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local tape, program, machine
gap> START_TEST("turing package: machine.tst");
gap> LoadPackage("turing", false);;

# Test machine creation
gap> tape := TmTape();; TmTapeWrite(tape, TmSymbol('I'));;
gap> program := TmProgram(TmState(1));;
gap> TmAddRule(program, TmState(1), TmSymbol('I'), TmState(1), TmSymbol('I'), TmRight());;
gap> TmAddRule(program, TmState(1), TmBlank(), TmState(2), TmSymbol('I'), TmLeft());;
gap> TmAddRule(program, TmState(2), TmBlank(), TmHalt(1), TmBlank(), TmRight());;
gap> machine := TmMachine(tape, program);
<machine q1 <tape |__[I]__|>>

# Let the machine take a step.
gap> TmStep(machine);;
gap> machine;
<machine q1 <tape |_I[_]__|>>
