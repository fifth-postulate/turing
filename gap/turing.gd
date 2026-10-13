#
# turing: Simulate the operation of Turing machines
#
#! @Chapter Introduction
#!
#! &turing; is a &GAP; package that simulates
#! <URL><Link>https://en.wikipedia.org/wiki/Turing_machine</Link><LinkText>Turing machines</LinkText></URL>.
#!
#! @Section What are Turing machines
#! A Turing machine is an abstract computing device dreamed up by Alan Turing
#!
#! It consist of a <Ref Chap="Chapter_Tape" Style="Text"/>, a
#! <Ref Chap="Chapter_Program" Style="Text"/> and a
#! <Ref Chap="Chapter_State" Style="Text"/>.
#!
#! The <C>current state</C> and the <Ref Chap="Chapter_Symbol" Style="Text"/>
#! read from the <C>tape</C> or used to <Ref Func="TmLookup"/> an __action__ 
#! to perform.
#!
#! @Section Example
#! Below there is a session that demonstrated the Turing machine that
#! increments a 
#! <URL><Link>https://en.wikipedia.org/wiki/Unary_numeral_system</Link><LinkText>unary number</LinkText></URL>.
#! 
#! @BeginExampleSession
#! gap> LoadPackage("turing");;
#! gap> program := TmProgram(TmState(1));
#! <program empty>
#! gap> TmAddRule(program, TmState(1), TmSymbol('I'), TmState(1), TmSymbol('I'), TmRight());
#! gap> TmAddRule(program, TmState(1), TmBlank()    , TmState(2), TmSymbol('I'), TmLeft());
#! gap> TmAddRule(program, TmState(2), TmSymbol('I'), TmState(2), TmSymbol('I'), TmLeft());
#! gap> TmAddRule(program, TmState(2), TmBlank()    , TmHalt(1) , TmBlank()    , TmRight());
#! gap> tape := TmTape();
#! <tape empty>
#! gap> TmTapeWrite(tape, TmSymbol('I'));
#! gap> machine := TmMachine(tape, program);
#! <machine q1 <tape |__[I]__|>>
#! gap> TmRun(machine);
#! gap> machine;
#! <machine h1 <tape |__[I]I_|>>
#! @EndExampleSession

#! @Section Definitions
#! The next definitions are global.

#! @Description Determines if <A>arg</A> is a &turing; object.
DeclareCategory("IsTuringObject", IsObject);

BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
