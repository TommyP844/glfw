project "glfw"
	kind "StaticLib"
	language "C"
	location ""

	defines
	{
		"_GLFW_WIN32"
	}

	files
	{
		"src/null_joystick.h",
		"src/null_joystick.c",
		"src/null_platform.h",
		"src/null_window.c",
		
		"src/platform.h",
		"src/platform.c",

		"src/vulkan.c",
		"src/win32_init.c",
		"src/win32_joystick.h", "src/win32_joystick.c",
		"src/win32_module.c",
		"src/win32_monitor.c",
		"src/win32_platform.h",
		"src/win32_thread.h", "src/win32_thread.c",
		"src/win32_time.h", "src/win32_time.c",
		"src/win32_window.c",

		"src/window.c"

	}
