#############################################################################
##
## machine.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference program, tape
## TODO provide an example

#! @Chapter Machine
#! We finally have everything in play to start using a &turing; machine. We
#! need a tape and a program and we are set to run or step through the
#! operations of the &turing; machine.
#!
#! @Section Example
#! In this example we will step throught a &turing; machine that keeps writing
#! a series of `I` to the its tape.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> tape := TmTape();
#! <tape empty>
#! gap> program := TmProgram(TmState(1));
#! <program empty>
#! gap> TmAddRule(program, TmState(1), TmBlank(), TmState(1), TmSymbol('I'), TmRight());
#! gap> machine := TmMachine(tape, program);
#! <machine q1 <tape empty>>
#! gap> TmStep(machine);
#! gap> machine;
#! <machine q1 <tape |_I[_]__|>>
#! gap> TmStep(machine);
#! gap> machine;
#! <machine q1 <tape |II[_]__|>>
#! @EndExampleSession

#! @Section Categories

#! @Description the category of &turing; machines.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringMachine", IsTuringObject);

BindGlobal("TmMachineType", NewType(TmObjectFamily, IsTuringMachine));

#! @Section Constructor

#! @Arguments tape, program
#! @Returns a &turing; machine
#! @Description This returns a &turing; machine that uses <A>program</A> on 
#! <A>tape</A>.
DeclareOperation("TmMachine", [IsTuringTape, IsTuringProgram]);

#! @Section Stepping and Running

#! @Arguments machine
#! @Description let the <A>machine</A> take a single step through its program.
DeclareOperation("TmStep", [IsTuringMachine]);

#! @Arguments machine
#! @Description let the <A>machine</A> run its course.
DeclareOperation("TmRun", [IsTuringMachine]);

#! @Argument machine
#! @Description let the <A>machine</A> run its course, printing each
#! step of the run.
DeclareOperation("TmTrace", [IsTuringMachine]);
