#############################################################################
##
## program.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Program

#! @Section banana

#!
DeclareCategory("IsTuringProgram", IsTuringObject);

#!
BindGlobal("TmProgramType", NewType(TmObjectFamily, IsTuringProgram));

#! @Section Constructor

#! @Arguments startingState
#! @Returns a &turing; program
#! @Description This retuns a &turing; program that can be used in a Machine.
#! 
#! The progam will start in state <A>startingState</A>.
## TODO reference Machine
## TODO provide an example
DeclareOperation("TmProgram", [IsTuringState]);

#! @Section Rules

#! @Arguments program, currentState, symbolRead, futureState, symbolToWrite, direction
#! @Returns nothing
#! @Description Adds a rule to the <A>program</A>
#! 
#! The rule to be added tells that a Turing Machine that is in state
#! <A>currentState</A> and reads symbol <A>symbolRead</A> from the tape
#! will transition to the state <A>futureState</A>, writes symbol
#! <A>symbolToWrite</A> to the tape and move the tape head to the
#! direction <A>direction</A>.
DeclareOperation("TmAddRule", [IsTuringProgram, IsTuringState, IsTuringSymbol, IsTuringState, IsTuringSymbol, IsTuringDirection]);

#! @Arguments program, currentState, symbolRead
#! @Returns a record containing the rule
#! @Description Looks up a rule from a <A>program</A>
DeclareOperation("TmLookup", [IsTuringProgram, IsTuringState, IsTuringSymbol]);

#! @Section Start State

#! @Returns the start state
#! @Description returns the start state of this program.
DeclareOperation("TmStartState", [IsTuringProgram]);
