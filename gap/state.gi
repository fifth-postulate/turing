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
InstallMethod(TmHalt, "for a postive integer", [IsPosInt],
function(index)
  return Objectify(TmHaltStateType,
                    rec(
                      index := index
                    ));
end);

#############################################################################
## Equality
#############################################################################

InstallMethod(\=, "for Turing states", [IsTuringState, IsTuringState],
function(left, right)
  if IsTuringHaltState(left) and IsTuringHaltState(right) then
    return left!.index = right!.index;
  elif (not IsTuringHaltState(left)) and (not IsTuringHaltState(right)) then
    return left!.index = right!.index;
  else
    return false;
  fi;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a state", [IsTuringState],
function(state)
  return StringFormatted("q{}", state!.index);
end);
InstallMethod(PrintString, "for a halt state", [IsTuringHaltState],
function(state)
  return StringFormatted("h{}", state!.index);
end);
