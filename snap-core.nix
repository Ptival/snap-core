{ mkDerivation, attoparsec, base, bytestring, bytestring-builder
, case-insensitive, containers, deepseq, directory, filepath
, hashable, HUnit, io-streams, lifted-base, monad-control, mtl
, old-locale, parallel, QuickCheck, random, readable, regex-posix
, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, time, transformers
, transformers-base, unix-compat, unordered-containers, vector
, zlib
}:
mkDerivation {
  pname = "snap-core";
  version = "1.0.0.0";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base bytestring bytestring-builder case-insensitive
    containers directory filepath HUnit io-streams lifted-base
    monad-control mtl old-locale random readable regex-posix text time
    transformers transformers-base unix-compat unordered-containers
    vector
  ];
  testHaskellDepends = [
    attoparsec base bytestring bytestring-builder case-insensitive
    containers deepseq directory filepath hashable HUnit io-streams
    lifted-base monad-control mtl old-locale parallel QuickCheck random
    readable regex-posix test-framework test-framework-hunit
    test-framework-quickcheck2 text time transformers transformers-base
    unix-compat unordered-containers vector zlib
  ];
  doCheck = false;
  homepage = "http://snapframework.com/";
  description = "Snap: A Haskell Web Framework (core interfaces and types)";
  license = stdenv.lib.licenses.bsd3;
}
