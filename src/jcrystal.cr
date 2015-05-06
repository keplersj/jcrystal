require "./jni"

macro jimport(object)
  JNI.find_class(jenv, {{object.gsub(/\./, "/")}})
  #JNI::JObject
end

macro init_crystal
  GC.init
  LibCrystalMain.__crystal_main(0, Pointer(Pointer(UInt8)).null)
end

module JCrystal
  setter env

  def self.create_vm(jvm: JNI::JavaVM)
      env = JNI::JNIEnv.new

      options = JNI::JavaVMOption.new
      #Path to the java source code
      #options.optionString = "-Djava.class.path=D:\\Java Src\\TestStruct"

      vm_args = JNI::JavaVMInitArgs.new
      vm_args.version = JNI::VERSION_1_8 #JDK version. This indicates version 1.8
      vm_args.nOptions = 1
      vm_args.ignoreUnrecognized = 0

      ret = jvm.create_java_vm(env, vm_args)

      #unless ret
      #  puts "Unable to Launch JVM"
      #end

      #return env
  end
end

struct JNI::JClass
  def is_a?(clazz: JClass)
    JNI::JEnv.is_assignable_from(self, clazz)
  end
end

struct JNI::JObject
  def is_a?(obj: JObject)
    JNI::JEnv.is_same_object(self, obj)
  end

  def is_a?(clazz: JClass)
    JNI::JEnv.is_instance_of(self, clazz)
  end
end
