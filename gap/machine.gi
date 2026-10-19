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
                      stepCount := 0,
                      currentState := TmStartState(program),
                      tape := tape,
                      program := program
                    ));
end);

#############################################################################
## Stepping and Running
#############################################################################

InstallMethod(TmStep, "for a machine", [IsTuringMachine],
function(machine)
  local action;

  action := TmLookup(machine!.program, machine!.currentState, TmTapeRead(machine!.tape));
  if not (action = fail) then
    machine!.stepCount := machine!.stepCount + 1;
    machine!.currentState := action.state;
    TmTapeWrite(machine!.tape, action.symbol);
    TmTapeHeadMove(machine!.tape, action.move);
  else
    Error(StringFormatted("no action in program for {} and {}",
            PrintString(machine!.currentState),
            PrintString(TmTapeRead(machine!.tape))));
  fi;
end);

InstallMethod(TmRun, "for a machine", [IsTuringMachine],
function(machine)
  while not IsTuringHaltState(machine!.currentState) do
    TmStep(machine);
  od;
end);

InstallMethod(TmTrace, "for a machine", [IsTuringMachine],
function(machine)
  while not IsTuringHaltState(machine!.currentState) do
    Print(PrintString(machine), "\n");
    TmStep(machine);
  od;
  Print(PrintString(machine), "\n");
end);

#############################################################################
## Inspection
#############################################################################

InstallMethod(TmStepCount, "for a machine", [IsTuringMachine],
function(machine)
  return machine!.stepCount;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a machine", [IsTuringMachine],
function(machine)
  return StringFormatted("<machine {} {}>", PrintString(machine!.currentState), PrintString(machine!.tape));
end);
