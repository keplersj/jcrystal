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

  type JSize = JInt
end
