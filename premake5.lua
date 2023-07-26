project "spdlog"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"

    	targetdir ( "%{wks.location}/bin/" .. outputdir)
    	objdir ( "%{wks.location}/bin-int/" .. outputdir)


	files
	{
		"include/**.h",
		"src/**.h",
		"src/**.cpp"
	}

	includedirs
	{
		"include"
	}

	defines
	{
		"SPDLOG_COMPILED_LIB"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"