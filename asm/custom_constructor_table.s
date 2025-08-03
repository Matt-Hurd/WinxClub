    EXPORT CppInitializationTableBase
    EXPORT CppInitializationTableLimit

    AREA CppInitializationVector, DATA, READONLY

CppInitializationTableBase
    DCD     0xFFFFFFFD
CppInitializationTableLimit
    END
