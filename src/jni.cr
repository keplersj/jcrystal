require "./jni/*"

lib JNI
  ##
  # JNI Native Method Interface
  ##

  struct JNINativeInterface
  end

  ##
  # JNI Invocation Interface
  ##

  struct JNIInvokeInterface
  end

  struct JNINativeInterface
    reserved0: Void
    reserved1: Void
    reserved2: Void

    reserved3: Void
  end

end
