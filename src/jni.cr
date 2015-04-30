class JObject < Object
end

class JClass < JObject
end

class JThrowable < JObject
end

class JString < JObject
end

class JString < JObject
end

class JArray < JObject
end

class JBooleanArray < JArray
end

class JByteArray < JArray
end

class JCharArray < JArray
end

class JShortArray < JArray
end

class JIntArray < JArray
end

class JLongArray < JArray
end

class JFloatArray < JArray
end

class JDoubleArray < JArray
end

class JObjectArray < JArray
end

class JNIEnv
end

class JavaVM
  abstract def destroy_java_vm
  abstract def attach_current_thread(penv: JNIEnv, args)
  abstract def detach_current_thread
  abstract def get_env(penv: JNIEnv, version: JInt)
  abstract def attach_current_thread_as_deamon(penv: JNIEnv, args)
end
