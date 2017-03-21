# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles JOM" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\icg17_lab4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\icg17_lab4\build

# Utility rule file for copy_shaders_lab4_shading.

# Include the progress variables for this target.
include lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\progress.make

copy_shaders_lab4_shading: lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/quad/quad_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/quad/quad_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/quad/quad_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/quad/quad_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/art_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/art_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/art_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/art_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/flat_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/flat_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/flat_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/flat_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/gouraud_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/gouraud_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/gouraud_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/gouraud_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/mesh_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/mesh_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/mesh_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/mesh_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/phong_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/phong_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/phong_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/phong_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/spot_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/spot_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/spot_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/spot_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/toon_fshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/toon_fshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying C:/icg17_lab4/lab4_shading/mesh/toon_vshader.glsl to build folder"
	cd C:\icg17_lab4\build\lab4_shading
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E copy C:/icg17_lab4/lab4_shading/mesh/toon_vshader.glsl C:/icg17_lab4/build/lab4_shading
	cd C:\icg17_lab4\build
.PHONY : copy_shaders_lab4_shading

# Rule to build all files generated by this target.
lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\build: copy_shaders_lab4_shading

.PHONY : lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\build

lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\clean:
	cd C:\icg17_lab4\build\lab4_shading
	$(CMAKE_COMMAND) -P CMakeFiles\copy_shaders_lab4_shading.dir\cmake_clean.cmake
	cd C:\icg17_lab4\build
.PHONY : lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\clean

lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles JOM" C:\icg17_lab4 C:\icg17_lab4\lab4_shading C:\icg17_lab4\build C:\icg17_lab4\build\lab4_shading C:\icg17_lab4\build\lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lab4_shading\CMakeFiles\copy_shaders_lab4_shading.dir\depend

