#############################################################################
##
## direction.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Direction

#! @Section Categories and Types

#! @BeginGroup
#! @GroupTitle Categories
#! @Description the direction categories
DeclareCategory("IsTuringDirection", IsTuringObject);
DeclareCategory("IsTuringLeft", IsTuringDirection);
DeclareCategory("IsTuringRight", IsTuringDirection);
#! @EndGroup

#! @BeginGroup
#! @GroupTitle Types
#! @Description the direction typies
BindGlobal("TmDirectionType", NewType(TmObjectFamily, IsTuringDirection));
BindGlobal("TmLeftType", NewType(TmObjectFamily, IsTuringLeft and IsTuringDirection));
BindGlobal("TmRightType", NewType(TmObjectFamily, IsTuringRight and IsTuringDirection));
#! @EndGroup

#! @Section Constructor


#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a direction.
#! @Arguments
#! @Returns a &turing; direction
#! @Description This retuns a &turing; direction; either left or right.
## TODO reference program
## TODO provide an example
DeclareOperation("TmLeft", []);
DeclareOperation("TmRight", []);
#! @EndGroup
