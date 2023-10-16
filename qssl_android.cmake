function(add_qssl_android_libraries)
    set (ssl_root_path "${CMAKE_CURRENT_FUNCTION_LIST_DIR}")
    set_property(TARGET ${ARGN} APPEND PROPERTY
        QT_ANDROID_EXTRA_LIBS
        "${ssl_root_path}/${CMAKE_ANDROID_ARCH_ABI}/libssl_3.so")
    set_property(TARGET ${ARGN} APPEND PROPERTY
        QT_ANDROID_EXTRA_LIBS
        "${ssl_root_path}/${CMAKE_ANDROID_ARCH_ABI}/libcrypto_3.so")
endfunction()
