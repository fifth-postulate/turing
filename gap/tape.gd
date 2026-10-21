#############################################################################
##
## tape.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter Tape
#! A &turing; tape is the means by which a &turing; machine can store
#! information that can be used in a calculation.
#!
#! A tape consist of
#!
#! * __cells__: there is an infinite number of them, both to the left and to
#!              the right, and each cell can hold a 
#!              <Ref Chap="Chapter_Symbol" Style="Text"/>
#! * __a head__: that scans a certain cell and can read and write a <Ref Chap="Chapter_Symbol" Style="Text"/> to it.
#!               The head can also be moved one of the <Ref Chap="Chapter_Direction" Style="Text"/>, left and right.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> tape := TmTape();
#! <tape empty>
#! gap> TmTapeWrite(tape, TmSymbol('I'));
#! gap> TmTapeHeadLeft(tape);
#! gap> TmTapeWrite(tape, TmSymbol('I'));
#! gap> tape;
#! <tape |__[I]I_|>
#! gap> TmTapeRead(tape);
#! <symbol 'I'>
#! @EndExampleSession

#! @Section Categories

#! @Description Determines if <A>arg</A> is a &turing; tape.
#! @ChapterInfo Introduction, Definitions
DeclareCategory("IsTuringTape", IsTuringObject);

BindGlobal("TmTapeType", NewType(TmObjectFamily, IsTuringTape));

#! @Section Constructor

#! @Returns a &turing; tape
#! @Description This operation creates an empty &turing; tape.
DeclareOperation("TmTape", []);

#! @Arguments tape
#! @Returns a &turing; tape
#! @Description This operation creates an &turing; tape with <A>tape</A> in
#! its cells.
#!
#! Each character in <A>tape</A> is converted to a <Ref Chap="Chapter_Symbol" Style="Text"/>. The character `_` is
#! special and is treated as the blank symbol.
DeclareOperation("TmTape", [IsString]);

#! @Section Reading and Writing

#! @Arguments tape
#! @Returns the symbol the <A>tape</A>s head is pointing at.
#! @Description This operations scans the cell the &turing; <A>tape</A> head is
#! pointing at and returns the <Ref Chap="Chapter_Symbol" Style="Text"/> it has scanned.
#! @BeginExampleSession
#! gap> tape := TmTape();
#! <tape empty>
#! gap> symbol := TmTapeRead(tape);
#! <symbol blank>
#! @EndExampleSession
DeclareOperation("TmTapeRead", [IsTuringTape]);

#! @Arguments tape, symbol
#! @Returns nothing
#! @Description This operations writes <A>symbol</A> to the cell the &turing;
#! <A>tape</A> head is pointing at.
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol('I'));;
#! gap> tape;
#! <tape |__[I]__|>
#! @EndExampleSession
DeclareOperation("TmTapeWrite", [IsTuringTape, IsTuringSymbol]);

#! @Section Moving

#! @Arguments tape
#! @Returns nothing
#! @Description this operation moves the <A>tape</A> head right.
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol('I'));;
#! gap> TmTapeHeadRight(tape);;
#! gap> tape;
#! <tape |_I[_]__|>
#! @EndExampleSession
DeclareOperation("TmTapeHeadRight", [IsTuringTape]);

#! @Arguments tape
#! @Returns nothing
#! @Description this operation moves the <A>tape</A> head left.
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol('I'));;
#! gap> TmTapeHeadLeft(tape);;
#! gap> tape;
#! <tape |__[_]I_|>
#! @EndExampleSession
DeclareOperation("TmTapeHeadLeft", [IsTuringTape]);

#! @Arguments tape, direction
#! @Returns nothing
#! @Description this operation moves the <A>tape</A> head in <Ref Chap="Chapter_Direction" Style="Text"/> <A>direction</A>.
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol('I'));;
#! gap> TmTapeHeadRight(tape);;
#! gap> tape;
#! <tape |_I[_]__|>
#! @EndExampleSession
DeclareOperation("TmTapeHeadMove", [IsTuringTape, IsTuringDirection]);
