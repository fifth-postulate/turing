#############################################################################
##
## symbol.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local symbol, blank
gap> START_TEST("turing package: symbol.tst");
gap> LoadPackage("turing", false);;

# Test symbol creation
gap> symbol := TmSymbol("I");
<symbol "I">

# Test blank symbol creation
gap> blank := TmBlank();
<symbol blank>

# All blank symbols are identical
gap> IsIdenticalObj(blank, TmBlank());
true
