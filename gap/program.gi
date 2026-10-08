#############################################################################
##
## program.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

## TODO: use a dictionary to store the rules
InstallMethod(TmProgram, "for no args", [],
function()
  return Objectify(TmProgramType,
                    rec(
                      rules := []
                    ));
end);


#############################################################################
## Rules
#############################################################################

InstallMethod(TmAddRule, "for a program", [IsTuringProgram, IsTuringState, IsTuringSymbol, IsTuringState, IsTuringSymbol, IsTuringDirection],
function(program, currentState, symbolRead, futureState, symbolToWrite, direction)
  Add(program!.rules, rec(
    key := rec( state := currentState, symbol := symbolRead ),
    action := rec( state := futureState, symbol := symbolToWrite, move := direction )
  ));
end);

InstallMethod(TmLookup, "for a program", [IsTuringProgram, IsTuringState, IsTuringSymbol], 
function(program, currentState, symbolRead)
  local record, needle;

  for record in program!.rules do
    if record.key.state = currentState and record.key.symbol = symbolRead then
      return Immutable(record.action);
    fi;
  od;
  return fail;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a program", [IsTuringProgram],
function(program)
  local ruleCount, description;

  ruleCount := Size(program!.rules);
  if ruleCount = 0 then
    description := "empty";
  elif ruleCount = 1 then
    description := "with 1 rule";
  else
    description := StringFormatted("with {} rules", ruleCount);
  fi;
  return StringFormatted("<program {}>", description);
end);
