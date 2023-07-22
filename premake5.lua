project "ImGUi"
  kind "StaticLib"
  language "C++"

  targetdir("bin/" .. outputDirectory .. "/%{prj.name}")
	objdir("bin-int/" .. outputDirectory .. "/%{prj.name}")

  files{
    "inconfig.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_retpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h" 
  }

  filter "system:windows" 
		buildoptions{"-std=cll", "-ldgi32" }
		systemversion "latest" 
		staticruntime "On" 
		
		
	
	filter {"system:windows", "configurations:Release"}
		buildoptions "/MT"
