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

InstallMethod(TmSymbol, "for a string", [IsString],
function(representation)
  return Objectify(TmSymbolType,
                    rec(
                      repr := representation
                    ));
end);

BindConstant("TM_BLANK", Objectify(TmSymbolBlankType, rec()));
InstallMethod(TmBlank, "for no args", [], {} -> TM_BLANK);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a Turing blank symbol", [IsTuringBlank],
function(blank)
  return "<symbol blank>";
end);

InstallMethod(PrintString, "for a Turing symbol", [IsTuringSymbol],
function(symbol)
  return StringFormatted("<symbol \"{}\">", symbol!.repr);
end);

