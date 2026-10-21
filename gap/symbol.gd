#############################################################################
##
## symbol.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter Symbol
#! Symbols are used to store information on the
#! <Ref Chap="Chapter_Tape" Style="Text"/>. It is akin to a
#! character, which is used in its constructor.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> symbolI := TmSymbol('I');
#! <symbol 'I'>
#! gap> symbolL := TmSymbol('L');
#! <symbol 'L'>
#! gap> symbolI = symbolL;
#! false
#! @EndExampleSession
#!
#! There is a special symbol __blank__.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> TmBlank();
#! <symbol blank>
#! @EndExampleSession
#! 

#! @Section Categories
#! We define the following categories. One for all &turing; symbols.
#! and one for all the blank symbols.

#! @Description the category of all &turing; symbols.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringSymbol", IsTuringObject);

#! @Description the category of all &turing; __blank__ symbols.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringBlank", IsTuringSymbol);

BindGlobal("TmSymbolType", NewType(TmObjectFamily, IsTuringSymbol));
BindGlobal("TmSymbolBlankType", NewType(TmObjectFamily, IsTuringBlank and IsTuringSymbol));

#! @Section Constructor

#! @Arguments representation
#! @Returns a &turing; symbol.
#! @Description This returns a &turing; symbol when given a character <A>representation</A>.
DeclareOperation("TmSymbol", [IsChar]);

#! @Returns a &turing; symbol.
#! @Description This returns the &turing; blank symbol.
#!
#! All blank symbols are identical.
DeclareOperation("TmBlank", []);

#! @Section Representation

#! @Arguments symbol
#! @Returns a string representing the <A>symbol</A>
#! @Description each symbol needs a representation that can be printed. This
#! operation returns that representation.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> symbol := TmSymbol('I');;
#! gap> TmSymbolRepresentation(symbol);
#! "I"
#! @EndExampleSession
DeclareOperation("TmSymbolRepresentation", [IsTuringSymbol]);
