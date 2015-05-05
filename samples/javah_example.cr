require "../src/jcrystal"

fun crystal_log = Java_JavahExample_crystalLog(env: JNI::JNIEnv, obj: JNI::JObject): Void
  init_crystal
  puts "Hello from Crystal!"
end

fun crystal_log_environment = Java_JavahExample_crystalLogsEnvironment(env: JNI::JNIEnv, obj: JNI::JObject): Void
  init_crystal
  puts env
  puts env.to_s
end

fun crystal_loggin_found_java = Java_JavahExample_crystalLoggingFoundJavaClass(jenv: JNI::JNIEnv, obj: JNI::JObject): Void
  init_crystal
  #logger = jimport "java.lang.Logger"
  logger = JNI::JObject
  puts logger
end
