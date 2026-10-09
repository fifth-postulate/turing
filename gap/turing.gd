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
#! <URL><Link>https://en.wikipedia.org/wiki/Unary_numeral_system</Link><LinkText>unary number</LinktText</URL>.
#! 
#! @BeginExampleSession
#! gap> 
#! @EndExampleSession
