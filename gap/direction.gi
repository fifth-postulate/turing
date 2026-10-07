#############################################################################
##
## direction.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

BindConstant("TM_LEFT", Objectify(TmLeftType, rec()));
InstallMethod(TmLeft, "for no args", [], {} -> TM_LEFT);

BindConstant("TM_RIGHT", Objectify(TmRightType, rec()));
InstallMethod(TmRight, "for no args", [], {} -> TM_RIGHT);

#############################################################################
## Equality
#############################################################################

InstallMethod(\=, "for Turing directions", [IsTuringDirection, IsTuringDirection],
function(first, second)
  return
    (IsTuringLeft(first) and IsTuringLeft(second)) or
    (IsTuringRight(first) and IsTuringRight(second));
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a direction", [IsTuringDirection],
function(direction)
  if IsTuringLeft(direction) then
    return "<direction left>";
  else
    return "<direction right>";
  fi;
end);
