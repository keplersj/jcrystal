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
end
