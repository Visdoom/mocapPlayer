FILE(REMOVE_RECURSE
  "CMakeFiles/demo.dir/demo.cxx.o"
  "../bin/examples/demo.pdb"
  "../bin/examples/demo"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/demo.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)