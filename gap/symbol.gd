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
DeclareOperation("TmSymbol", [IsChar]);
DeclareOperation("TmBlank", []);
#! @EndGroup

#! @Section Representation

#! @BeginGroup
#! @Arguments symbol
#! @Returns a string representing the symbol
#! @Description each symbol needs a representation that can be printed. This
#! operation returns that representation.
## TODO create references to other constructs
## TODO provide an example
DeclareOperation("TmSymbolRepresentation", [IsTuringSymbol]);
#! @EndGroup
