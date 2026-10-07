#############################################################################
##
## state.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

InstallMethod(TmState, "for a postive integer", [IsPosInt],
function(index)
  return Objectify(TmStateType,
                    rec(
                      index := index
                    ));
end);

#############################################################################
## Equality
#############################################################################

InstallMethod(\=, "for Turing states", [IsTuringState, IsTuringState],
function(left, right)
  return left!.index = right!.index;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a state", [IsTuringState],
function(state)
  return StringFormatted("q{}", state!.index);
end);
