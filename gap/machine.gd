#############################################################################
##
## machine.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Machine

#! @Section Categories and Types

#! @BeginGroup
#! @GroupTitle Categories
#! @Description the state category
DeclareCategory("IsTuringMachine", IsTuringObject);
#! @EndGroup

#! @BeginGroup
#! @GroupTitle Types
#! @Description the state type
BindGlobal("TmMachineType", NewType(TmObjectFamily, IsTuringMachine));
#! @EndGroup

#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a machine.
#! @Arguments tape, program
#! @Returns a &turing; Machine
#! @Description This retuns a &turing; machine that uses <A>program</A> on 
#! <A>tape</A>.
## TODO reference program, tape
## TODO provide an example
DeclareOperation("TmMachine", [IsTuringTape, IsTuringProgram]);
#! @EndGroup

#! @Section Stepping and Running

#! @BeginGroup
#! @GroupTitle Progressing a single step
#! @Argument machine
#! @Returns nothing
#! @Description let the <A>machine</A> take a single step through its program.
## TODO reference program, tape
## TODO provide an example
DeclareOperation("TmStep", [IsTuringMachine]);
#! @EndGroup
