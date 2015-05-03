require "./jni"

macro jimport(object)
  alias {{object.split(".").last.id}} = JNI::JObject
end

module JCrystal
  def self.create_vm(jvm: JNI::JavaVM)
      env:: JNI::JNIEnv
      vm_args:: JNI::JavaVMInitArgs

      options:: JNI::JavaVMOption
      #Path to the java source code
      #options.optionString = "-Djava.class.path=D:\\Java Src\\TestStruct"
      vm_args.version = JNI::VERSION_1_8 #JDK version. This indicates version 1.8
      vm_args.nOptions = 1
      vm_args.ignoreUnrecognized = 0

      ret = JNI.create_java_vm(jvm, env, vm_args)

      if(ret < 0)
        puts "Unable to Launch JVM"
      end

      return env
  end
end
