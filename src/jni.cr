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
  #type Byte = Byte
  #type Short = Short
  #type Long = Long
  ifdef x86_64
    #64-bit float primitive
    type JFloat = Float64
  else
    #32-bit float-primitive
    type JFloat = Float32
  end
  #type Double = Double
  # char-primitive
  type JChar = Char
  # boolean-primitive
  type JBoolean = Bool

  alias JObject = Object
  alias JClass = Class
  alias JString = String
  alias JThrowable = Exception
  alias JArray = Array
  ifdef x86_64
    alias JIntArray = Array(Int64)
  else
    alias JIntArray = Array(Int32)
  end
  #alias JByteArray = Array(Byte)
  #alias JShortArray = Array(Short)
  #alias JLongArray = Array(Long)
  ifdef x86_64
    alias JFloatArray = Array(Float64)
  else
    alias JFloatArray = Array(Float32)
  end
  #alias JDoubleArrray = Array(Double)
  alias JCharArray = Array(Char)
  alias JBooleanArray = Array(Bool)
end
