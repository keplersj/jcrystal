require "./primitives"
require "./objects"

lib JNI
  struct JavaVMOption
    optionString: Char*
    extraInfo: Void
  end

  struct JavaVMInitArgs
    version: JInt
    nOptions: JInt
    options: JavaVMOption
    ignoreUnrecognized: JBoolean
  end

  struct JavaVMAttachArgs
    version: JInt
    name: Char*
    group: JObject
  end
end
