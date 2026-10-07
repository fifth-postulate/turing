#############################################################################
##
## symbol.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

InstallMethod(TmSymbol, "for a character", [IsChar],
function(representation)
  return Objectify(TmSymbolType,
                    rec(
                      repr := representation
                    ));
end);

BindConstant("TM_BLANK", Objectify(TmSymbolBlankType, rec()));
InstallMethod(TmBlank, "for no args", [], {} -> TM_BLANK);


#############################################################################
## Representation
#############################################################################

InstallMethod(TmSymbolRepresentation, "for a blank symbol", [IsTuringBlank],
function(blank)
  return "_";
end);

InstallMethod(TmSymbolRepresentation, "for a non-blank-symbol", [IsTuringSymbol],
function(symbol)
  return [symbol!.repr];
end);

#############################################################################
## Equality
#############################################################################

InstallMethod(\=, "for Turing symbols", [IsTuringSymbol, IsTuringSymbol],
function(left, right)
  if IsTuringBlank(left) and IsTuringBlank(right) then
    return true;
  elif (not IsTuringBlank(left)) and (not IsTuringBlank(right)) then
    return left!.repr = right!.repr;
  else
    return false;
  fi;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a Turing blank symbol", [IsTuringBlank],
function(blank)
  return "<symbol blank>";
end);

InstallMethod(PrintString, "for a Turing symbol", [IsTuringSymbol],
function(symbol)
  return StringFormatted("<symbol {}>", symbol!.repr);
end);

