add_library(SPIRV-Reflect STATIC 
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/spirv_reflect.h>
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/spirv_reflect.c>
	$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/spirv/unified1/spirv.h>
)

target_include_directories(SPIRV-Reflect PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>)

set_target_properties(SPIRV-Reflect PROPERTIES EXCLUDE_FROM_ALL true)