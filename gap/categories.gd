#! @Chapter General Definitions

#! @Section Categories
#! Every object in &turing; belongs to the <C>IsTuringObject</C>
#! category. Other categories are defined in there respective declaration files.

#! @Description Determines if <A>arg</A> is a &turing; object.
DeclareCategory("IsTuringObject", IsObject);

BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
