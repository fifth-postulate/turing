#############################################################################
##
## program.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference Machine
## TODO provide an example

#! @Chapter Program
#! A &turing; program is the means with which a &turing; machine determines
#! which __action__ to perform when in a certain state and reading a certain
#! symbol.
#!
#! It determines this by looking up the __rule__ that corresponds with the
#! combined state and symbol key.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> program := TmProgram(TmState(1));
#! <program empty>
#! gap> TmAddRule(program, TmState(1), TmBlank(), TmHalt(1), TmSymbol('I'), TmLeft());
#! gap> program;
#! <program with 1 rule>
#! @EndExampleSession

#! @Section Categories

#! @Description Determines if an object is a &turing; program.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringProgram", IsTuringObject);

BindGlobal("TmProgramType", NewType(TmObjectFamily, IsTuringProgram));

#! @Section Constructor

#! @Arguments startingState
#! @Returns a &turing; program.
#! @Description This retuns a &turing; program that can be used in a Machine.
#! The progam will start in state <A>startingState</A>.
DeclareOperation("TmProgram", [IsTuringState]);

#! @Section Rules

#! @Arguments program, currentState, symbolRead, futureState, symbolToWrite, direction
#! @Label Lookup
#! @Returns nothing
#! @Description Adds a rule to the <A>program</A>
#! 
#! The rule to be added tells that a Turing Machine that is in state
#! <A>currentState</A> and reads symbol <A>symbolRead</A> from the tape
#! will transition to the state <A>futureState</A>, writes symbol
#! <A>symbolToWrite</A> to the tape and move the tape head to the
#! direction <A>direction</A>.
DeclareOperation("TmAddRule", [IsTuringProgram, IsTuringState, IsTuringSymbol, IsTuringState, IsTuringSymbol, IsTuringDirection]);

#! <Label Name="TmLookup"/>
#! @Arguments program, currentState, symbolRead
#! @Returns a record containing the rule
#! @Description Looks up a rule from a <A>program</A>, with <A>currentState</A>
#! and <A>symbolRead</A> as key.
#!
#! The record has keys `state`, `symbol` and `move`. The `state` key determines
#! the next state of the &turing; machine, the `symbol` key determines what
#! symbol to write to the &turing; machines tape and the `move` key determines
#! which direction the head moves in.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> program := TmProgram(TmState(1));
#! <program empty>
#! gap> TmAddRule(program, TmState(1), TmBlank(), TmHalt(1), TmSymbol('I'), TmLeft());
#! gap> action := TmLookup(program, TmState(1), TmBlank());;
#! gap> action.state;
#! h1
#! gap> action.symbol;
#! <symbol 'I'>
#! gap> action.move;
#! <direction left>
#! @EndExampleSession
DeclareOperation("TmLookup", [IsTuringProgram, IsTuringState, IsTuringSymbol]);

#! @Section Start State

#! @Arguments program
#! @Returns the start state
#! @Description returns the start state of this <A>program</A>.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> program := TmProgram(TmState(1));;
#! gap> TmStartState(program);
#! q1
#! @EndExampleSession
DeclareOperation("TmStartState", [IsTuringProgram]);
