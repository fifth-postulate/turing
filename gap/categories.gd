#! @Section Turing Categories
#! @BeginGroup
#! Every object in &turing; belongs to the <C>IsTuringObject</C>
#! category. The categories following it are for further specificity on the
#! type of objects. These are machines and tape.
DeclareCategory("IsTuringObject", IsObject);
DeclareCategory("IsTuringMachine", IsTuringObject);
DeclareCategory("IsTuringTape", IsTuringObject);
#! The names of these categories are fairly descriptive.
#! @EndGroup

#! @Section Turing Types
#! @BeginGroup
#! The various types that &turing; objects can have.
BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
BindGlobal("TmTapeType", NewType(TmObjectFamily, IsTuringTape));
#! @EndGroup
