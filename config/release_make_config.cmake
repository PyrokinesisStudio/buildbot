include("/home/tristan/source/blender/build_files/cmake/config/blender_full.cmake")
include("/home/tristan/config/static_libs.cmake")
include("/home/tristan/config/common.cmake")

set(WITH_BLENDER ON  CACHE BOOL "" FORCE)
set(WITH_PLAYER ON  CACHE BOOL "" FORCE)
set(WITH_SYSTEM_GLEW OFF  CACHE BOOL "" FORCE)
set(WITH_PYTHON_INSTALL ON  CACHE BOOL "" FORCE)
set(WITH_PYTHON_INSTALL_NUMPY ON  CACHE BOOL "" FORCE)
set(WITH_PYTHON_INSTALL_REQUESTS ON  CACHE BOOL "" FORCE)
set(WITH_GLEW_ES OFF  CACHE BOOL "" FORCE)
set(WITH_GLEW_MX OFF  CACHE BOOL "" FORCE)
set(WITH_SYSTEM_GLES OFF  CACHE BOOL "" FORCE)
set(WITH_STATIC_LIBS ON  CACHE BOOL "" FORCE)
set(WITH_OPENVDB OFF  CACHE BOOL "" FORCE)
set(WITH_SDL_DYNLOAD ON  CACHE BOOL "" FORCE)
set(WITH_JACK_DYNLOAD ON  CACHE BOOL "" FORCE)
set(Boost_USE_STATIC_LIBS ON  CACHE BOOL "" FORCE)
set(WITH_DOC_MANPAGE OFF CACHE BOOL "" FORCE)
set(WITH_ALEMBIC OFF CACHE BOOL "" FORCE)
set(WITH_INTERNATIONAL ON CACHE BOOL "" FORCE)
set(WITH_IMAGE_OPENJPEG OFF CACHE BOOL "" FORCE)
set(WITH_CYCLES_OSL OFF CACHE BOOL "" FORCE)
set(WITH_OPENCOLLADA ON CACHE BOOL "" FORCE)
set(WITH_OPENIMAGEIO ON CACHE BOOL "" FORCE)
set(WITH_OPENCOLORIO OFF CACHE BOOL "" FORCE)
set(WITH_INPUT_NDOF OFF CACHE BOOL "" FORCE)

set(LLVM_VERSION "3.5" CACHE STRING "" FORCE)
set(LLVM_STATIC ON  CACHE BOOL "" FORCE)
