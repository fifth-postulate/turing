#############################################################################
##
## symbol.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference tape
## TODO provide an example

#! @Chapter Symbol

#! @Section Categories
#! We define the following categories. One for all &turing; symbols.
#! and one for all the blank symbols.

#! @Description the category of all &turing; symbols.
DeclareCategory("IsTuringSymbol", IsTuringObject);

#! @Description the category of all &turing; __blank__ symbols.
DeclareCategory("IsTuringBlank", IsTuringSymbol);

BindGlobal("TmSymbolType", NewType(TmObjectFamily, IsTuringSymbol));
BindGlobal("TmSymbolBlankType", NewType(TmObjectFamily, IsTuringBlank and IsTuringSymbol));

#! @Section Constructor

#! @Arguments representation
#! @Returns a &turing; symbol
#! @Description This returns a &turing; symbol that can be used on a Tape.
DeclareOperation("TmSymbol", [IsChar]);

#! @Returns a &turing; symbol
#! @Description This returns the &turing; blank symbol.
DeclareOperation("TmBlank", []);

#! @Section Representation

#! @Returns a string representing the symbol
#! @Description each symbol needs a representation that can be printed. This
#! operation returns that representation.
DeclareOperation("TmSymbolRepresentation", [IsTuringSymbol]);
