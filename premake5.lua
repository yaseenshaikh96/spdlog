project "spdlog"
	kind "None"
	language "C++"
	cppdialect "C++20"

	files
	{
		"src/**.h",
		"src/**.cpp"
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