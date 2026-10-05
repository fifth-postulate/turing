#############################################################################
##
## symbol.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Symbol

#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a symbol.
#! @Arguments representation
#! @Returns a &turing; symbol
#! @Description This retuns a &turing; symbol that can be used on a Tape.
## TODO reference tape
## TODO provide an example
DeclareOperation("TmSymbol", [IsString]);
DeclareOperation("TmBlank", []);
#! @EndGroup
