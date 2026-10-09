#############################################################################
##
## direction.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter Direction
#! A Tape head can move in either of two directions: left or right.

#! @Section Categories

#! @Description the category of all direcitons.
DeclareCategory("IsTuringDirection", IsTuringObject);

#! @Description the category of the direction left.
DeclareCategory("IsTuringLeft", IsTuringDirection);

#! @Description the category of the direction right.
DeclareCategory("IsTuringRight", IsTuringDirection);

BindGlobal("TmDirectionType", NewType(TmObjectFamily, IsTuringDirection));
BindGlobal("TmLeftType", NewType(TmObjectFamily, IsTuringLeft and IsTuringDirection));
BindGlobal("TmRightType", NewType(TmObjectFamily, IsTuringRight and IsTuringDirection));

#! @Section Constructor

#! @Returns a &turing; direction
#! @Description This returns the &turing; direction; Left.
DeclareOperation("TmLeft", []);

#! @Returns a &turing; direction
#! @Description This returns the &turing; direction; Right.
DeclareOperation("TmRight", []);
