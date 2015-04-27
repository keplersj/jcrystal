@[Link("jni")]
lib JNI
  # Java Primitive Mappings
  ifdef x86_64
    # 64-bit int primitive
    type JInt = Int64
  else
    # 32-bit int primitive
    type JInt = Int32
  end
  type JByte = Char
  type JShort = Int8
  type JLong = Int64
  ifdef x86_64
    #64-bit float primitive
    type JFloat = Float64
  else
    #32-bit float-primitive
    type JFloat = Float32
  end
  type JDouble = Int16
  # char-primitive
  type JChar = Char
  # boolean-primitive
  type JBoolean = Bool

  struct JObject
  end

  alias JClass = JObject
  alias JThrowable = JObject
  alias JString = JObject
  alias JArray = JObject
  alias JIntArray = JArray
  alias JByteArray = JArray
  alias JShortArray = JArray
  alias JLongArray = JArray
  alias JFloatArray = JArray
  alias JDoubleArrray = JArray
  alias JCharArray = JArray
  alias JBooleanArray = JArray

  alias JWeak = JObject

  union JValue
    z: JBoolean
    b: JByte
    c: JChar
    s: JShort
    i: JInt
    j: JLong
    f: JFloat
    d: JDouble
    l: JObject
  end

  struct JFieldID
  end

  struct JMethodID
  end

  # Return values from JObjectRefType
  enum JObjectType
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
