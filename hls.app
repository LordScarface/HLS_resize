<project xmlns="com.autoesl.autopilot.project" name="AXI_VideoCrop_3" top="">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="D:/Vitis_Libraries/vision/data/HD.png">
        <SimFlow name="csim" ldflags="-LC:/tools/opencv/install/x64/mingw/lib -lopencv_imgcodecs3414 -lopencv_imgproc3414 -lopencv_core3414 -lopencv_highgui3414 -lopencv_flann3414 -lopencv_features2d3414" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/xf_resize_tb.cpp" sc="0" tb="1" cflags=" -I../../../../Vitis_Libraries/vision/L1/include -IC:/tools/opencv/install/include  -I../../../../Vitis_Libraries/vision/L1/examples/resize/build -std=c++0x -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="AXI_VideoCrop_3/src/xf_resize_accel.cpp" sc="0" tb="false" cflags="-ID:/Vitis_Libraries/vision/L1/include -std=c++0x -ID:/Vitis_Libraries/vision/L1/examples/resize/build" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

