#############################################################################
##
## state.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle State

#! @Section Categories and Types

#! @BeginGroup
#! @GroupTitle Categories
#! @Description the state category
DeclareCategory("IsTuringState", IsTuringObject);
DeclareCategory("IsTuringHaltState", IsTuringState);
#! @EndGroup

#! @BeginGroup
#! @GroupTitle Types
#! @Description the state type
BindGlobal("TmStateType", NewType(TmObjectFamily, IsTuringState));
BindGlobal("TmHaltStateType", NewType(TmObjectFamily, IsTuringHaltState));
#! @EndGroup

#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a state.
#! @Arguments index
#! @Returns a &turing; state
#! @Description This retuns a &turing; state that can be used in a Program.
## TODO reference program
## TODO provide an example
DeclareOperation("TmState", [IsPosInt]);
DeclareOperation("TmHalt", [IsPosInt]);
#! @EndGroup
