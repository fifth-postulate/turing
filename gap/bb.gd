#############################################################################
##
## bb.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference program, tape
## TODO provide an example
## TODO mathematics
## Reference bbchallenge

#! @Chapter Busy Beaver
#! It is well know that some problems are uncomputable. One such example is the
#! __Busy Beaver__ function.
#!
#! The Busy Beaver function B(n) is the most number of steps, or shifts, a
#! &turing; machine with n states on two symbols can take and still halt.
#!
#! @Section Example
#! In this example we show how to take a __standard representation__ of such
#! machines, construct a &turing; machine from it and let it run its course.
#!
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> machine := TmBB("1RB1LB_1LA0LC_1RZ1LD_1RD0RA");
#! <machine q1 <tape empty>>
#! gap> TmRun(machine);
#! gap> TmStepCount(machine);
#! 107
#! @EndExampleSession

#! @Section Constructor

#! @Arguments representation
#! @Returns a &turing; machine
#! @Description This returns a &turing; machine that corresponds with the
#! <A>representation</A>.
DeclareOperation("TmBB", [IsString]);
