add_subdirectory(mpglibDBL)

add_library(mp3gain
            STATIC
            mp3gain.c gain_analysis.c apetag.c id3tag.c rg_error.c
            )
target_include_directories(mp3gain PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}")
target_link_libraries(mp3gain mpglib)
IF(UNIX)
target_compile_options(mp3gain PRIVATE -Wall -Wextra)
ENDIF(UNIX)
