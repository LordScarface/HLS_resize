############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AXI_VideoCrop_3
add_files AXI_VideoCrop_3/src/xf_resize_accel.cpp -cflags "-ID:/Vitis_Libraries/vision/L1/include -std=c++0x -ID:/Vitis_Libraries/vision/L1/examples/resize/build"
add_files -tb AXI_VideoCrop_3/src/xf_resize_tb.cpp -cflags "-I../../Vitis_Libraries/vision/L1/include -IC:/tools/opencv/install/include -I../../Vitis_Libraries/vision/L1/examples/resize/build -std=c++0x -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./AXI_VideoCrop_3/solution1/directives.tcl"
csim_design -ldflags {-LC:/tools/opencv/install/x64/mingw/lib -lopencv_imgcodecs3414 -lopencv_imgproc3414 -lopencv_core3414 -lopencv_highgui3414 -lopencv_flann3414 -lopencv_features2d3414} -argv {D:/Vitis_Libraries/vision/data/HD.png}
csynth_design
cosim_design -ldflags {-LC:/tools/opencv/install/x64/mingw/lib -lopencv_imgcodecs3414 -lopencv_imgproc3414 -lopencv_core3414 -lopencv_highgui3414 -lopencv_flann3414 -lopencv_features2d3414}
export_design -format ip_catalog
