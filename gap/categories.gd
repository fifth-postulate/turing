#! @Section Turing Categories
#! @BeginGroup
#! Every object in &turing; belongs to the <C>IsTuringObject</C>
#! category. The categories following it are for further specificity on the
#! type of objects. These are machines and tape.
DeclareCategory("IsTuringObject", IsObject);
#! The names of these categories are fairly descriptive.
#! @EndGroup

#! @Section Turing Family
#! @BeginGroup
#! The family of &turing; objects.
BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
#! @EndGroup
