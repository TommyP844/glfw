project "glfw"
    kind "StaticLib"
    language "C"
    architecture "x64"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    
    includedirs
    {
        "C:/VulkanSDK/1.3.211.0/Include"
    }

    files
    {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/internal.h",
        "src/platform.h",
        "src/mappings.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/platform.c",
        "src/vulkan.c",
        "src/window.c",
        "src/egl_context.c",
        "src/osmesa_context.c",
        "src/null_platform.h",
        "src/null_joystick.h",
        "src/null_init.c",
    
        "src/null_monitor.c",
        "src/null_window.c",
        "src/null_joystick.c",
    
    }
    filter "system:linux"
        pic "On"
    
        systemversion "latest"
        staticruntime "On"
    
        files
        {
            "src/x11_init.c",
            "src/x11_monitor.c",
            "src/x11_window.c",
            "src/xkb_unicode.c",
            "src/posix_time.c",
            "src/posix_thread.c",
            "src/glx_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c",
            "src/linux_joystick.c"
        }
    
        defines
        {
            "_GLFW_X11"
            
        }
    
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
        
        -- buildoptions{
        --     "/MT"
        -- }
    
        files
        {
            "src/win32_init.c",
            "src/win32_module.c",
            "src/win32_joystick.c",
            "src/win32_monitor.c",
            "src/win32_time.h",
            "src/win32_time.c",
            "src/win32_thread.h",
            "src/win32_thread.c",
            "src/win32_window.c",
            "src/wgl_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c"
        }
    
        defines 
        { 
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
    
        }
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
