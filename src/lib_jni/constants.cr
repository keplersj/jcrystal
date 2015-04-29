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

  FALSE = 0
  TRUE = 1

  ##
  # Possible return values for JNI functions
  ##

  OK = 0          # success
  ERR = -1        # unknown error
  EDETACHED = -2  # thread detached
  EVERSION = -3   # JNI version error
  ENOMEM = -4     # not enough memory
  EECIST = -5     # VM already created
  EINVAL = -6     # invalid arguements

  ##
  # Used in ReleaseScalarArrayElements
  ##

  COMMIT = 1
  ABORT = 2

  ##
  # JVM Version Constants
  ##

  VERSION_1_1 = 0x00010001
  VERSION_1_2 = 0x00010002
  VERSION_1_4 = 0x00010004
  VERSION_1_6 = 0x00010006
  VERSION_1_8 = 0x00010001
end
