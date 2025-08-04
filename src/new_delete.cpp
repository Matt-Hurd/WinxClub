#include <cstddef> // Required for size_t

// --- External Function Prototypes ---
// This is your game's custom memory allocation function.
// We declare it here so we can call it.
extern "C" void* maybeMallocEWRAM(unsigned int size);

// --- C++ Memory Allocation Overrides ---

// This function overrides the global 'new' operator. Whenever the compiler
// sees 'new MyObject()', it will call this function instead of the
// default one from the C library.
void* operator new(size_t size) {
    // We simply redirect the call to the game's own allocator.
    return maybeMallocEWRAM(size);
}

// It's good practice to also override the 'delete' operator, even if
// the game doesn't use it, to avoid accidentally linking in the default.
void operator delete(void* ptr) {
    // If the game has a custom 'free' function, call it here.
    // Otherwise, this can be left empty.
    (void)ptr; // Prevents "unused parameter" warnings
}

// The ADS 1.2 compiler may also require these array versions to be defined
// to be fully compliant and avoid linking in other library members.
void* operator new[](size_t size) {
    return maybeMallocEWRAM(size);
}

void operator delete[](void* ptr) {
    (void)ptr;
}
