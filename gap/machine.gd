#############################################################################
##
## machine.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

## TODO reference program, tape
## TODO provide an example

#! @Chapter Machine

#! @Section Categories

#! @Description the category of &turing; machines.
DeclareCategory("IsTuringMachine", IsTuringObject);

BindGlobal("TmMachineType", NewType(TmObjectFamily, IsTuringMachine));

#! @Section Constructor

#! @Arguments tape, program
#! @Returns a &turing; machine
#! @Description This returns a &turing; machine that uses <A>program</A> on 
#! <A>tape</A>.
DeclareOperation("TmMachine", [IsTuringTape, IsTuringProgram]);

#! @Section Stepping and Running

#! @Arguments machine
#! @Description let the <A>machine</A> take a single step through its program.
DeclareOperation("TmStep", [IsTuringMachine]);

#! @Arguments machine
#! @Description let the <A>machine</A> run its course.
DeclareOperation("TmRun", [IsTuringMachine]);
