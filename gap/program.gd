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

#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a Program.
#! @Returns a &turing; program
#! @Description This retuns a &turing; program that can be used in a Machine.
## TODO reference Machine
## TODO provide an example
DeclareOperation("TmProgram", []);
#! @EndGroup

#! @Section Rules

#! @BeginGroup
#! @GroupTitle Adding rules to a program
#! @Argument program, currentState, symbolRead, futureState, symbolToWrite, direction
#! @Returns nothing
#! @Descriptions Adds a rul to the <A>program</A>
#! 
#! The rule to be added tells that a Turing Machine that is in state
#! <A>currentState</A> and reads symbol <A>symbolRead</A> from the tape
#! will transition to the state <A>futureState</A>, writes symbol
#! <A>symbolToWrite</A> to the tape and move the tape head to the
#! direction <A>direction</A>.
DeclareOperation("TmAddRule", [IsTuringProgram, IsTuringState, IsTuringSymbol, IsTuringState, IsTuringSymbol, IsTuringDirection]);
#! @EndGroup
