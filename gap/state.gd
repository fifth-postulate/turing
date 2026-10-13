#############################################################################
##
## state.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference program
## TODO provide an example

#! @Chapter State
#! A &turing; state determines how a &turing; machine acts upon reading a
#! symbol from the tape.
#!
#! There are two kinds of state. __Regular states__ and __Halting states__.
#! Halting states signal that the &turing; machine has halted.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> q := TmState(1);
#! q1
#! gap> h := TmHalt(1);
#! h1
#! gap> IsTuringHaltState(q);
#! false
#! gap> IsTuringState(h);
#! true
#! gap> q = h;
#! false
#! @EndExampleSession

#! @Section Categories

#! @Description determines if <A>arg</A> is a &turing; state.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringState", IsTuringObject);

#! @Description determines if <A>arg</A> is a &turing; __halting__ state.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringHaltState", IsTuringState);

BindGlobal("TmStateType", NewType(TmObjectFamily, IsTuringState));
BindGlobal("TmHaltStateType", NewType(TmObjectFamily, IsTuringHaltState));

#! @Section Constructor

#! @Arguments index
#! @Returns a &turing; state
#! @Description This retuns a &turing; state that can be used in a Program.
DeclareOperation("TmState", [IsPosInt]);


#! @Arguments index
#! @Returns a &turing; halting state
#! @Description This retuns a &turing; state that can be used in a Program and
#! signifies that the machine has halted..
DeclareOperation("TmHalt", [IsPosInt]);
