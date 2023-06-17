project "imgui"
language "C++"
cppdialect "C++17"

filter "system:macosx"
   buildoptions {
      "-Wall",
      "-Wextra",
      "-Wpedantic",
      "-Wno-unused-parameter"
   }
filter {}

staticruntime "off"
kind "StaticLib"

targetdir("bin/" .. outputdir)
objdir("build/" .. outputdir)

files {
   "src/**.cpp",
   "include/**.h",
   "backends/imgui_impl_glfw.cpp",
   "backends/imgui_impl_glfw.h",
   "backends/imgui_impl_vulkan.cpp",
   "backends/imgui_impl_vulkan.h"
}

includedirs {
   "include",
   "backends",
   "%{wks.location}/vendor/glfw/include"
}
