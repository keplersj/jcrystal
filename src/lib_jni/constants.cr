lib LibJNI
  # Return values from JObjectRefType
  enum JObjectRefType
    JNIInvalidRefType = 0
    JNILocalRefType = 1
    JNIGlobalRefType = 2
    JNIWeakGlobalRefType = 3
  end

  ##
  # JBoolean Constants
  ##

  JNI_FALSE = 0
  JNI_TRUE = 1

  ##
  # Possible return values for JNI functions
  ##

  JNI_OK = 0          # success
  JNI_ERR = -1        # unknown error
  JNI_EDETACHED = -2  # thread detached
  JNI_EVERSION = -3   # JNI version error
  JNI_ENOMEM = -4     # not enough memory
  JNI_EECIST = -5     # VM already created
  JNI_EINVAL = -6     # invalid arguements

  ##
  # Used in ReleaseScalarArrayElements
  ##

  JNI_COMMIT = 1
  JNI_ABORT = 2
end
