#############################################################################
##
## tape.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Tape

#! @Section Constructor

#! @BeginGroup
#! @GroupTitle Creating a new &turing; tape
#! @Returns a &turing; tape
#! @Description This operation creates a new &turing; tape.
#! 
# TODO provide a better description
# TODO provide an example
DeclareOperation("TmTape", []);
#! @EndGroup


#! @Section Reading and Writing

#! @BeginGroup
#! @GroupTitle Reading the tape
#! @Arguments tape
#! @Returns the symbol the <A>tape</A>s head is pointing at.
#! @Description This operations scans the cell the &turing; <A>tape</A> head is
#! pointing at and returns the <C>symbol</C> it has scanned.
# TODO have a "see also section; at least to see symbol"
#! @BeginExampleSession
#! gap> tape := TmTape();
#! <tape empty>
#! gap> symbol := TmTapeRead(tape);
#! <symbol blank>
#! @EndExampleSession
DeclareOperation("TmTapeRead", [IsTuringTape]);

#! @EndGroup
#! @BeginGroup
#! @GroupTitle Writing to the tape
#! @Arguments tape, symbol
#! @Returns nothing
#! @Description This operations writes <A>symbol</A> to the cell the &turing;
#! <A>tape</A> head is pointing at and
# TODO have a "see also section; at least to see symbol"
#! @BeginExampleSession
#! gap> tape := TmTape();;
#! gap> TmTapeWrite(tape, TmSymbol("I"));;
#! gap> tape;
#! <tape |__[I]__|>
#! @EndExampleSession
DeclareOperation("TmTapeWrite", [IsTuringTape, IsTuringSymbol]);
#! @EndGroup
