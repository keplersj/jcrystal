require "./primitives"
require "./objects"
require "./invoke_interface"

lib JNI
  struct JavaVM
    functions: JNIInvokeInterface
  end
  struct JNIEnv
  end

  struct JavaVMOption
    optionString: UInt8*
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
    name: UInt8*
    group: JObject
  end

  fun get_default_java_vm_init_args = JNI_GetDefaultJavaVMInitArgs(args: Void*): JInt
  fun create_java_vm = JNI_CreateJavaVM(pvm: JavaVM, penv: JNIEnv, args: JavaVMInitArgs): JInt
  fun get_created_java_vms = JNI_GetCreatedJavaVMs(vm: JavaVM, size: JSize, size2: JSize*): JInt
end

struct JNI::JavaVM
  def get_default_java_vm_init_args(args: Void*): JInt
    JNI.get_default_java_vm_init_args(args)
  end
  def create_java_vm(env: JNIEnv, args: JavaVMInitArgs): JInt
    JNI.create_java_vm(self, env, args)
  end
  def get_created_java_vms(size: JSize, size2: JSize): JInt
    JNI.get_created_java_vms(self, size, size2)
  end
end
