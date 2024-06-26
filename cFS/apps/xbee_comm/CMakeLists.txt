cmake_minimum_required(VERSION 2.6.4)
project(CFE_XBEE_COMM C)

include_directories(fsw/mission_inc)
include_directories(fsw/platform_inc)

# Include the public API from sample_lib to demonstrate how
# to call library-provided functions
include_directories(${sample_lib_MISSION_DIR}/fsw/public_inc)

# Create the app module
add_cfe_app(xbee_comm_app fsw/src/xbee_comm_app.c)

# Add table
#add_cfe_tables(sampleAppTable fsw/tables/sample_app_tbl.c)

# If UT is enabled, then add the tests from the subdirectory
# Note that this is an app, and therefore does not provide
# stub functions, as other entities would not typically make 
# direct function calls into this application.
if (ENABLE_UNIT_TESTS)
  add_subdirectory(unit-test)
endif (ENABLE_UNIT_TESTS)
