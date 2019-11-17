# Install script for directory: E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/Debug/SDL2d.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/Release/SDL2.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/MinSizeRel/SDL2.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/RelWithDebInfo/SDL2.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/Debug/SDL2maind.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/Release/SDL2main.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/MinSizeRel/SDL2main.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/RelWithDebInfo/SDL2main.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake"
         "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/CMakeFiles/Export/cmake/SDL2Targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/SDL2Config.cmake"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_assert.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_atomic.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_audio.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_bits.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_blendmode.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_clipboard.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_android.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_iphoneos.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_macosx.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_minimal.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_os2.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_pandora.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_psp.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_windows.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_winrt.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_config_wiz.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_copying.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_cpuinfo.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_egl.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_endian.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_error.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_events.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_filesystem.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_gamecontroller.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_gesture.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_haptic.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_hints.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_joystick.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_keyboard.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_keycode.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_loadso.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_log.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_main.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_messagebox.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_mouse.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_mutex.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_name.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengl.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengl_glext.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles2.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles2_gl2.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles2_gl2ext.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles2_gl2platform.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_opengles2_khrplatform.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_pixels.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_platform.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_power.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_quit.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_rect.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_render.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_revision.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_rwops.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_scancode.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_sensor.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_shape.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_stdinc.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_surface.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_system.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_syswm.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_assert.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_common.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_compare.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_crc32.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_font.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_fuzzer.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_harness.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_images.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_log.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_md5.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_memory.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_test_random.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_thread.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_timer.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_touch.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_types.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_version.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_video.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/SDL_vulkan.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/begin_code.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/SDL2-2.0.9/include/close_code.h"
    "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/include/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/Projects/CS4080/Rust/Game/target/debug/build/sdl2-sys-f9392ec97f56bf02/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
