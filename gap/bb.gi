#############################################################################
##
## bb.gi
## Copyright (C) 2026                                       Daan van Berkel
##
## Licensing information can be found in the README file of this package
##
#############################################################################
##

#############################################################################
## Constructors
#############################################################################

InstallMethod(TmBB, "for a string", [IsString],
function(representation)
  local indexedPart, parts, program, currentState, action, toState, toSymbol, toDirection;

  toState := function(character)
    local index;
    if character = 'Z' then
      return TmHalt(1);
    else
      index := 1 + IntChar(character) - IntChar('A'); 
      return TmState(index);
    fi;
  end;

  toSymbol := function(character)
    if character = '0' then
      return TmBlank();
    else
      return TmSymbol('I');
    fi;
  end;

  toDirection := function(character)
    if character = 'L' then
      return TmLeft();
    else
      return TmRight();
    fi;
  end;

  program := TmProgram(TmState(1));
  parts := SplitString(representation, "_");
  for indexedPart in ListN([1..Size(parts)], parts, function(index, part) return [index, part]; end) do
    currentState := TmState(indexedPart[1]);
    action := indexedPart[2]{[1..3]};
    TmAddRule(program, currentState, toSymbol('0'), toState(action[3]), toSymbol(action[1]), toDirection(action[2]));
    action := indexedPart[2]{[4..6]};
    TmAddRule(program, currentState, toSymbol('1'), toState(action[3]), toSymbol(action[1]), toDirection(action [2]));
  od;

  return TmMachine(TmTape(), program);
end);
