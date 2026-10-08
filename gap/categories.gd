#! @Chapter
#! @ChapterTitle General Definitions

#! @Section Categories

#! Every object in &turing; belongs to the <C>IsTuringObject</C>
#! category. Other categories are defined in there respective declaration files.
DeclareCategory("IsTuringObject", IsObject);

#! @Section Turing Family

#! The family of &turing; objects.
BindGlobal("TmObjectFamily", NewFamily("TmObjectFamily", IsTuringObject));
