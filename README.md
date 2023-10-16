# OpenSSL v3 binaries for Qt Android apps

To add OpenSSL to your CMake project, append the following to your project's `CMakeLists.txt` file:

```cmake
if(QT_FEATURE_openssl)
    if(ANDROID)
        FetchContent_Declare(
            qssl_android
            DOWNLOAD_EXTRACT_TIMESTAMP true
            URL https://github.com/omergoktas/qssl_android/archive/refs/heads/master.zip
        )
        FetchContent_Populate(qssl_android)
        include(${qssl_android_SOURCE_DIR}/qssl_android.cmake)
    else()
        find_package(OpenSSL 3 EXACT COMPONENTS SSL)
    endif()
endif()
```

Then:

```cmake
qt_add_executable(your_target_name ..)
qt_add_executable(your_second_target_name ..)

if (ANDROID)
    add_qssl_android_libraries(your_target_name your_second_target_name)
endif()
```
