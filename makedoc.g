#
# turing: Simulate the operation of Turing machines
#
# This file is a script which compiles the package manual.
#

UrlEntity := function(name, url)
  return StringFormatted("""<Alt Not="Text"><URL Text="{1}">{2}</URL></Alt>
    <Alt Only="Text"><Package>{1}</Package></Alt>""", name, url);
end;

PackageEntity := function(name)
  if TestPackageAvailability(name) <> fail then
    return UrlEntity(PackageInfo(name)[1].PackageName,
                     PackageInfo(name)[1].PackageWWWHome);
  fi;
  return StringFormatted("<Package>{1}</Package>", name);
end;

if fail = LoadPackage("AutoDoc", "2018.02.14") then
    Error("AutoDoc version 2018.02.14 or newer is required.");
fi;

XMLEntities := rec();
XMLEntities.turing := PackageEntity("turing");

AutoDoc(
rec( scaffold := rec(
      entities := XMLEntities
    ),
    autodoc := true ) );

Unbind(PackageEntity);
Unbind(UrlEntity);
Unbind(XMLEntities);

QUIT;
