require "./primitives"
require "./objects"

lib JNI
  struct JavaVM
  end
  alias JNIEnv = Void

  struct JavaVMOption
    optionString: Char*
    extraInfo: Void
  end

  struct JavaVMInitArgs
    version: Int32
    nOptions: Int32
    options: JavaVMOption
    ignoreUnrecognized: Int32
  end

  struct JavaVMAttachArgs
    version: JInt
    name: Char*
    group: JObject
  end

  fun get_default_java_vm_init_args = JNI_GetDefaultJavaVMInitArgs(args: Void*): JInt
  fun create_java_vm = JNI_CreateJavaVM(pvm: JavaVM, penv: JNIEnv, args: JavaVMInitArgs): JInt
  fun get_created_java_vms = JNI_GetCreatedJavaVMs(vm: JavaVM, size: JSize, size2: JSize*): JInt
end
