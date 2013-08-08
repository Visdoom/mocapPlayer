FILE(REMOVE_RECURSE
  "CMakeFiles/hello.dir/hello.cxx.o"
  "../bin/examples/hello.pdb"
  "../bin/examples/hello"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/hello.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
