$CXX -std=c++23 -c Type.ccm               \
  -fmodule-output=MyVec-Type.pcm
$CXX -std=c++23 -c Vec2.ccm               \
  -fmodule-output=MyVec-Vec2.pcm          \
  -fmodule-file=MyVec:Type=MyVec-Type.pcm
$CXX -std=c++23 -c Vec.ccm                \
  -fmodule-output=MyVec-Vec.pcm           \
  -fmodule-file=MyVec:Type=MyVec-Type.pcm
$CXX -std=c++23 -c Calculator.ccm         \
  -fmodule-output=MyVec-Calculator.pcm    \
  -fmodule-file=MyVec:Vec=MyVec-Vec.pcm   \
  -fmodule-file=MyVec:Vec2=MyVec-Vec2.pcm \
  -fmodule-file=MyVec:Type=MyVec-Type.pcm
