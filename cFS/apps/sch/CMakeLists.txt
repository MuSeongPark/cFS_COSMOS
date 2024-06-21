cmake_minimum_required(VERSION 2.6.4)
project(CFS_SCH C)

include_directories(fsw/public_inc)
include_directories(fsw/mission_inc)
include_directories(fsw/platform_inc)

aux_source_directory(fsw/src APP_SRC_FILES)

# Create the app module
add_cfe_app(sch ${APP_SRC_FILES})

include_directories(fsw/src) #added
aux_source_directory(fsw/tables APP_TABLE_FILES) #added
add_cfe_tables(sch ${APP_TABLE_FILES}) #added

#The "add_cfe_tables" call must always come after the "add_cfe_app" call in the CMakeLists.txt file
