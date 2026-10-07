#############################################################################
##
## direction.tst
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#@local direction
gap> START_TEST("turing package: direction.tst");
gap> LoadPackage("turing", false);;

# Test left creation
gap> direction := TmLeft();
<direction left>

# Test right creation
gap> direction := TmRight();
<direction right>

# Two rights are identical
gap> IsIdenticalObj(direction, TmRight());
true

# Two left are identical
gap> direction := TmLeft();;
gap> IsIdenticalObj(direction, TmLeft());
true

# Left and right are not equal
gap> TmLeft() = TmRight();
false
