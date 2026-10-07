#! @Section Turing Categories
#! @BeginGroup
#! Every object in &turing; belongs to the <C>IsTuringObject</C>
#! category. The categories following it are for further specificity on the
#! type of objects. These are machines and tape.
DeclareCategory("IsTuringObject", IsObject);
DeclareCategory("IsTuringMachine", IsTuringObject);
DeclareCategory("IsTuringTape", IsTuringObject);
DeclareCategory("IsTuringState", IsTuringObject);
DeclareCategory("IsTuringDirection", IsTuringObject);
DeclareCategory("IsTuringLeft", IsTuringDirection);
DeclareCategory("IsTuringRight", IsTuringDirection);
DeclareCategory("IsTuringProgram", IsTuringObject);
#! The names of these categories are fairly descriptive.
#! @EndGroup

#! @Section Turing Types
#! @BeginGroup
#! The various types that &turing; objects can have.
BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
BindGlobal("TmTapeType", NewType(TmObjectFamily, IsTuringTape));
BindGlobal("TmStateType", NewType(TmObjectFamily, IsTuringState));
BindGlobal("TmDirectionType", NewType(TmObjectFamily, IsTuringDirection));
BindGlobal("TmLeftType", NewType(TmObjectFamily, IsTuringLeft and IsTuringDirection));
BindGlobal("TmRightType", NewType(TmObjectFamily, IsTuringRight and IsTuringDirection));
BindGlobal("TmProgramType", NewType(TmObjectFamily, IsTuringProgram));
#! @EndGroup
