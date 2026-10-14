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
gap> TmAddRule(program, TmState(2), TmSymbol('I'), TmState(2), TmSymbol('I'), TmLeft());;
gap> TmAddRule(program, TmState(2), TmBlank(), TmHalt(1), TmBlank(), TmRight());;
gap> machine := TmMachine(tape, program);
<machine q1 <tape |__[I]__|>>

# Let the machine take a step.
gap> TmStep(machine);;
gap> machine;
<machine q1 <tape |_I[_]__|>>

# Let the machine run its course.
gap> TmRun(machine);;
gap> machine;
<machine h1 <tape |__[I]I_|>>

# Trace the operation of the machine
gap> tape := TmTape("IIII");;
gap> machine := TmMachine(tape, program);;
gap> TmTrace(machine: window := 6);
<machine q1 <tape |______[I]III___|>>
<machine q1 <tape |_____I[I]II____|>>
<machine q1 <tape |____II[I]I_____|>>
<machine q1 <tape |___III[I]______|>>
<machine q1 <tape |__IIII[_]______|>>
<machine q2 <tape |___III[I]I_____|>>
<machine q2 <tape |____II[I]II____|>>
<machine q2 <tape |_____I[I]III___|>>
<machine q2 <tape |______[I]IIII__|>>
<machine q2 <tape |______[_]IIIII_|>>
<machine h1 <tape |______[I]IIII__|>>
