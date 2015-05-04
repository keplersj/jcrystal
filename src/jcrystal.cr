require "./jni"

macro jimport(object)
  alias {{object.split(".").last.id}} = JNI::JObject
end

module JCrystal
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
