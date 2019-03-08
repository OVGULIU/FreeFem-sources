INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(PackageManagerPaths)

FIND_PATH(CBLAS_INCLUDES NAMES cblas.h 
                         PATHS ${PACKMAN_INCLUDE_PATHS}) 

FIND_LIBRARY(CBLAS_LIBRARIES NAMES cblas libcblas.so.3 
                             PATHS ${PACKMAN_LIBRARIES_PATHS}
                             PATH_SUFFIXES atlas-base)

IF(CBLAS_INCLUDES AND CBLAS_LIBRARIES)
  SET(CBLAS_FOUND True)
  MESSAGE(STATUS "A library with CBLAS API found.")
ENDIF(CBLAS_INCLUDES AND CBLAS_LIBRARIES)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(CBLAS DEFAULT_MSG CBLAS_INCLUDES CBLAS_LIBRARIES)