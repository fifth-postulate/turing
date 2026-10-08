#############################################################################
##
## machine.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

InstallMethod(TmMachine, "for a tape and program", [IsTuringTape, IsTuringProgram],
function(tape, program)
  return Objectify(TmMachineType,
                    rec(
                      currentState := TmStartState(program),
                      tape := tape,
                      program := program
                    ));
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a machine", [IsTuringMachine],
function(machine)
  return StringFormatted("<machine {} {}>", PrintString(machine!.currentState), PrintString(machine!.tape));
end);
