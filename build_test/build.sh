#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Configuration ---
# Compiler and Linker
ARMCPP="armcpp"
ARMLINK="armlink"
ARMAR="armar" # Librarian, if you want to create a .lib file

# Directories
SRC_DIR="src"
INCLUDE_DIR="src"
BUILD_DIR="build"
OBJ_DIR="${BUILD_DIR}/obj"
LIB_DIR="${BUILD_DIR}/lib"
OUTPUT_AXF="${BUILD_DIR}/test_executable.axf"
OUTPUT_LIB="${LIB_DIR}/mygamelogic.lib"

CPP_FLAGS_COMMON="-cpu ARM7TDMI -apcs /interwork -O2 -g -I${INCLUDE_DIR}"

LINKER_FLAGS_COMMON=""

# --- Build Process ---

# Create output directories
mkdir -p "${OBJ_DIR}"
mkdir -p "${LIB_DIR}" # For library

echo "Starting build process..."

# Find all .cpp files in the source directory
# Using process substitution with readarray for safer filename handling (spaces, etc.)
# though less critical if your filenames are simple.
readarray -t cpp_source_files < <(find "${SRC_DIR}" -name "*.cpp")

if [ ${#cpp_source_files[@]} -eq 0 ]; then
    echo "No .cpp files found in ${SRC_DIR}."
    exit 1
fi

object_files=() # Array to store paths to .o files

# Compile each .cpp file
echo "--- Compiling source files ---"
for source_file in "${cpp_source_files[@]}"; do
    # Get the base name of the file (e.g., Monster.cpp from src/Monster.cpp)
    base_name_with_ext=$(basename "${source_file}")
    # Get the base name without the .cpp extension (e.g., Monster)
    base_name_no_ext="${base_name_with_ext%.cpp}"
    # Define the output object file path
    obj_file="${OBJ_DIR}/${base_name_no_ext}.o"

    echo "Compiling ${source_file}  ->  ${obj_file}"
    ${ARMCPP} ${CPP_FLAGS_COMMON} -c "${source_file}" -o "${obj_file}"
    
    # Add the generated object file to our list
    object_files+=("${obj_file}")
done

echo "Compilation complete."
echo "Generated object files: ${object_files[@]}"

# Link the object files into an executable
if [ ${#object_files[@]} -gt 0 ]; then
    echo "--- Linking into executable: ${OUTPUT_AXF} ---"
    ${ARMLINK} ${LINKER_FLAGS_COMMON} -o "${OUTPUT_AXF}" "${object_files[@]}"
    echo "Linking complete. Executable at ${OUTPUT_AXF}"

    # Optional: Create a static library
    # echo "--- Creating static library: ${OUTPUT_LIB} ---"
    # ${ARMAR} -cr "${OUTPUT_LIB}" "${object_files[@]}"
    # echo "Static library created at ${OUTPUT_LIB}"

else
    echo "No object files were generated, skipping linking."
fi

echo "Build process finished."