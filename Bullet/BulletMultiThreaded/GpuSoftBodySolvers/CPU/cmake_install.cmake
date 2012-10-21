# Install script for directory: /Volumes/Projects/Libs/bullet-2.79/src/BulletMultiThreaded/GpuSoftBodySolvers/CPU

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Library/Frameworks")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Volumes/Projects/Libs/bullet-2.79/src/BulletMultiThreaded/GpuSoftBodySolvers/CPU/BulletSoftBodySolvers_CPU.framework" USE_SOURCE_PERMISSIONS)
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBodySolvers_CPU.framework/Versions/2.79/BulletSoftBodySolvers_CPU" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBodySolvers_CPU.framework/Versions/2.79/BulletSoftBodySolvers_CPU")
    EXECUTE_PROCESS(COMMAND "/usr/bin/install_name_tool"
      -id "/Library/Frameworks/BulletSoftBodySolvers_CPU.framework/Versions/2.79/BulletSoftBodySolvers_CPU"
      -change "/Volumes/Projects/Libs/bullet-2.79/src/BulletCollision/BulletCollision.framework/Versions/2.79/BulletCollision" "/Library/Frameworks/BulletCollision.framework/Versions/2.79/BulletCollision"
      -change "/Volumes/Projects/Libs/bullet-2.79/src/BulletDynamics/BulletDynamics.framework/Versions/2.79/BulletDynamics" "/Library/Frameworks/BulletDynamics.framework/Versions/2.79/BulletDynamics"
      -change "/Volumes/Projects/Libs/bullet-2.79/src/BulletSoftBody/BulletSoftBody.framework/Versions/2.79/BulletSoftBody" "/Library/Frameworks/BulletSoftBody.framework/Versions/2.79/BulletSoftBody"
      -change "/Volumes/Projects/Libs/bullet-2.79/src/LinearMath/LinearMath.framework/Versions/2.79/LinearMath" "/Library/Frameworks/LinearMath.framework/Versions/2.79/LinearMath"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBodySolvers_CPU.framework/Versions/2.79/BulletSoftBodySolvers_CPU")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./BulletSoftBodySolvers_CPU.framework/Versions/2.79/BulletSoftBodySolvers_CPU")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

