require "./lib_jni.cr"

def jimport(package)
  object "#{package}"
end

private def object(package: String)
  #puts "This will return an Object representing the Java Object soon."
  #package.split(.)
  return LibJNI::JObject
end

module JCrystal
  def self.create_vm(jvm: JNI::JavaVM)
      env:: LibJNI::JNIEnv
      vm_args:: LibJNI::JavaVMInitArgs

      options:: LibJNI::JavaVMOption
      #Path to the java source code
      #options.optionString = "-Djava.class.path=D:\\Java Src\\TestStruct"
      vm_args.version = LibJNI::JNI_VERSION_1_8 #JDK version. This indicates version 1.6
      vm_args.nOptions = 1
      vm_args.ignoreUnrecognized = 0

      ret = LibJNI.create_java_vm(jvm, env, vm_args)

      if(ret < 0)
        puts "Unable to Launch JVM"
      end

      return env
  end
end
