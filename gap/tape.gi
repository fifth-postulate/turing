#############################################################################
##
## tape.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

InstallMethod(TmTape, "for no arg", [],
function()
  return Objectify(TmTapeType,
                    rec(
                      left  := [],
                      head  := TmBlank(),
                      right := []
                    ));
end);

#############################################################################
## Reading and Writing
#############################################################################

InstallMethod(TmTapeRead, "for a tape", [IsTuringTape],
function(tape)
  return tape!.head;
end);

InstallMethod(TmTapeWrite, "for a tape", [IsTuringTape, IsTuringSymbol],
function(tape, symbol)
  tape!.head := symbol;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a Turing tape", [IsTuringTape],
function(tape)
  local result, window;

  if IsTuringBlank(tape!.head) and ForAll(tape!.left, IsTuringBlank) and ForAll(tape!.right, IsTuringBlank) then
    result := "<tape empty>";
  else
    result := StringFormatted("<tape |__[{}]__|>", TmSymbolRepresentation(tape!.head));
  fi;

  return result;
end);
