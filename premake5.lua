project "SPIRV-Reflect"
	kind "StaticLib"

	MakeProjectEditorOnly()

	target = "%{prj.location}/" .. OutputLibDir
	targetdir(target)
	debugdir(target)
	intermediate = "%{prj.location}/Intermediate/" .. OutputDir
	objdir(intermediate)

	files 
	{
		"spirv_reflect.h",
		"spirv_reflect.c",
	}