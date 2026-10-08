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

#!
DeclareCategory("IsTuringState", IsTuringObject);

#!
DeclareCategory("IsTuringHaltState", IsTuringState);

#! 
BindGlobal("TmStateType", NewType(TmObjectFamily, IsTuringState));

#!
BindGlobal("TmHaltStateType", NewType(TmObjectFamily, IsTuringHaltState));

#! @Section Constructor

#! @Arguments index
#! @Returns a &turing; state
#! @Description This retuns a &turing; state that can be used in a Program.
## TODO reference program
## TODO provide an example
DeclareOperation("TmState", [IsPosInt]);
DeclareOperation("TmHalt", [IsPosInt]);
