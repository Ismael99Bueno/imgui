project "imgui"
   language "C++"
   cppdialect "C++17"
   buildoptions "-Wall"
   
   staticruntime "off"
   kind "StaticLib"

   targetdir("bin/" .. outputdir)
   objdir("build/" .. outputdir)

   files {"src/**.cpp", "include/**.h"}

   includedirs "../**/include"
