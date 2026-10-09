#############################################################################
##
## tape.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

# TODO provide a better description
# TODO provide an example

#! @Chapter Tape

#! @Section pear

#!
DeclareCategory("IsTuringTape", IsTuringObject);

BindGlobal("TmTapeType", NewType(TmObjectFamily, IsTuringTape));

#! @Section Constructor

#! @Returns a &turing; tape
#! @Description This operation creates a new &turing; tape.
#! 
DeclareOperation("TmTape", []);


#! @Section Reading and Writing

#! @Arguments tape
#! @Returns the symbol the <A>tape</A>s head is pointing at.
#! @Description This operations scans the cell the &turing; <A>tape</A> head is
#! pointing at and returns the <C>symbol</C> it has scanned.
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
#! <A>tape</A> head is pointing at and
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol("I"));;
#! gap> tape;
#! <tape |__[I]__|>
#! @EndExampleSession
DeclareOperation("TmTapeWrite", [IsTuringTape, IsTuringSymbol]);

#! @Section Moving

#! @Arguments tape
#! @Returns nothing
#! @Description these operations move the tape head, either left or right.
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol("I"));;
#! gap> TmTapeHeadRight(tape);;
#! gap> tape;
#! <tape |_I[_]__|>
#! @EndExampleSession
DeclareOperation("TmTapeHeadRight", [IsTuringTape]);
DeclareOperation("TmTapeHeadLeft", [IsTuringTape]);
DeclareOperation("TmTapeHeadMove", [IsTuringTape, IsTuringDirection]);
