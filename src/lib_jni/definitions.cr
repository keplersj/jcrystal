require "./primitives"
require "./objects"

lib LibJNI
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

  ##
  # Used in REgisterNatives to describe native method name, signature,
  # and function pointer.
  ##

  struct JNINativeMethod
    name: Char
    signature: Char
    fnPtr: Void
  end

  struct JFieldID
  end

  struct JMethodID
  end
end
