#
# turing: Simulate the operation of Turing machines
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "turing" );

TestDirectory(DirectoriesPackageLibrary( "turing", "tst" ),
  rec(exitGAP := true));

FORCE_QUIT_GAP(1); # if we ever get here, there was an error
