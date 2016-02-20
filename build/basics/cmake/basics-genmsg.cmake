# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "basics: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ibasics:/home/mkhuthir/catkin_ws/src/basics/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(basics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg" NAME_WE)
add_custom_target(_basics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "basics" "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(basics
  "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basics
)

### Generating Services

### Generating Module File
_generate_module_cpp(basics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(basics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(basics_generate_messages basics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg" NAME_WE)
add_dependencies(basics_generate_messages_cpp _basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basics_gencpp)
add_dependencies(basics_gencpp basics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basics_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(basics
  "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basics
)

### Generating Services

### Generating Module File
_generate_module_lisp(basics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(basics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(basics_generate_messages basics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg" NAME_WE)
add_dependencies(basics_generate_messages_lisp _basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basics_genlisp)
add_dependencies(basics_genlisp basics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basics_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(basics
  "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basics
)

### Generating Services

### Generating Module File
_generate_module_py(basics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(basics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(basics_generate_messages basics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkhuthir/catkin_ws/src/basics/msg/Complex.msg" NAME_WE)
add_dependencies(basics_generate_messages_py _basics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(basics_genpy)
add_dependencies(basics_genpy basics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS basics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/basics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(basics_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/basics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(basics_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/basics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(basics_generate_messages_py std_msgs_generate_messages_py)
