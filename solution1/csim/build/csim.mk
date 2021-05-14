# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../src/xf_resize_tb.cpp ../../../src/xf_resize_accel.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vitis_HLS/2020.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vitis_HLS/2020.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -I../../../../Vitis_Libraries/vision/L1/include -IC:/tools/opencv/install/include -I../../../../Vitis_Libraries/vision/L1/examples/resize/build -std=c++0x -Wno-unknown-pragmas -ID:/Vitis_Libraries/vision/L1/include -ID:/Vitis_Libraries/vision/L1/examples/resize/build 
LFLAG += -LC:/tools/opencv/install/x64/mingw/lib -lopencv_imgcodecs3414 -lopencv_imgproc3414 -lopencv_core3414 -lopencv_highgui3414 -lopencv_flann3414 -lopencv_features2d3414
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/xf_resize_tb.o: ../../../src/xf_resize_tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/xf_resize_tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I../../../../../../Vitis_Libraries/vision/L1/include -IC:/tools/opencv/install/include -I../../../../../../Vitis_Libraries/vision/L1/examples/resize/build -std=c++0x -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/xf_resize_tb.d

$(ObjDir)/xf_resize_accel.o: ../../../src/xf_resize_accel.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../src/xf_resize_accel.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -ID:/Vitis_Libraries/vision/L1/include -ID:/Vitis_Libraries/vision/L1/examples/resize/build -std=c++0x  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/xf_resize_accel.d
