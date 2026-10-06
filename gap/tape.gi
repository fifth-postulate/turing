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

InstallMethod(TmTapeRead, "for a Turing tape", [IsTuringTape],
function(tape)
  return tape!.head;
end);

InstallMethod(TmTapeWrite, "for a tape", [IsTuringTape, IsTuringSymbol],
function(tape, symbol)
  tape!.head := symbol;
end);

#############################################################################
## Moving the Tape Head
#############################################################################

InstallMethod(TmTapeHeadRight, "for a Turing tape", [IsTuringTape],
function(tape)
  local symbol;

  Add(tape!.left, tape!.head);
  if Size(tape!.right) = 0 then
    symbol := TmBlank();
  else
    symbol := Remove(tape!.right);
  fi;
  tape!.head := symbol;
end);

InstallMethod(TmTapeHeadLeft, "for a Turing tape", [IsTuringTape],
function(tape)
  local symbol;

  Add(tape!.right, tape!.head);
  if Size(tape!.left) = 0 then
    symbol := TmBlank();
  else
    symbol := Remove(tape!.left);
  fi;
  tape!.head := symbol;
end);

#############################################################################
## ViewString
#############################################################################

InstallMethod(PrintString, "for a Turing tape", [IsTuringTape],
function(tape)
  local result, window, leftSymbols, left, rightSymbols, right, fetchSymbolFromEnd;

  fetchSymbolFromEnd := function(halfTape, i)
    local index, symbol;

    index := Size(halfTape) - i;
    if index > 0 then
      symbol := halfTape[index];
    else
      symbol := TmBlank();
    fi;
    return symbol;
  end;
  if IsTuringBlank(tape!.head) and ForAll(tape!.left, IsTuringBlank) and ForAll(tape!.right, IsTuringBlank) then
    result := "<tape empty>";
  else
    window := 2;
    leftSymbols := List([0 .. (window - 1)], i -> fetchSymbolFromEnd(tape!.left, i));
    leftSymbols := Reversed(leftSymbols);
    left := FoldLeft(leftSymbols, function(acc, symbol)
      return Concatenation(acc, TmSymbolRepresentation(symbol));
    end, "");
    rightSymbols := List([0 .. (window - 1)], i -> fetchSymbolFromEnd(tape!.right, i));
    right := FoldLeft(rightSymbols, function(acc, symbol)
      return Concatenation(acc, TmSymbolRepresentation(symbol));
    end, "");
    result := StringFormatted("<tape |{left}[{head}]{right}|>", rec(
      left := left{(Size(left) - window) + [1 .. window]},
      head := TmSymbolRepresentation(tape!.head),
      right := right{[1 .. window]}
    ));
  fi;

  return result;
end);
