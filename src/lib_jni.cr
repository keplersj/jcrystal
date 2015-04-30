require "./lib_jni/*"

lib LibJNI
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
