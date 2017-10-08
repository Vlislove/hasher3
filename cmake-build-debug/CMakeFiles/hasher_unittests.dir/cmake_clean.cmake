file(REMOVE_RECURSE
  "hasher_unittests.pdb"
  "hasher_unittests.exe"
  "hasher_unittests.exe.manifest"
  "libhasher_unittests.dll.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/hasher_unittests.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
