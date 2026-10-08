#############################################################################
##
## machine.gd
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#! @Chapter
#! @ChapterTitle Machine

#! @Section Categories and Types

#!
DeclareCategory("IsTuringMachine", IsTuringObject);

#!
BindGlobal("TmMachineType", NewType(TmObjectFamily, IsTuringMachine));

#! @Section Constructor

#! @Arguments tape, program
#! @Returns a &turing; Machine
#! @Description This retuns a &turing; machine that uses <A>program</A> on 
#! <A>tape</A>.
## TODO reference program, tape
## TODO provide an example
DeclareOperation("TmMachine", [IsTuringTape, IsTuringProgram]);

#! @Section Stepping and Running

#! @Arguments machine
#! @Returns nothing
#! @Description let the <A>machine</A> take a single step through its program.
## TODO reference program, tape
## TODO provide an example
DeclareOperation("TmStep", [IsTuringMachine]);

#! @Arguments machine
#! @Returns nothing
#! @Description let the <A>machine</A> run its course.
## TODO reference program
## TODO provide an example
DeclareOperation("TmRun", [IsTuringMachine]);
