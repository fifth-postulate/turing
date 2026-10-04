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
                      left    := [],
                      headIdx := 0,
                      right   := []
                    ));
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a Turing tape", [IsTuringTape],
function(tape)
  local result;

  result := "<tape empty>";

  return result;
end);
