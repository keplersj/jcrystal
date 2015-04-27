require "./jni.cr"

def jimport(package)
  object "#{package}"
end

private def object(package: String)
  #puts "This will return an Object representing the Java Object soon."
  #package.split(.)
  return JNI::JObject
end
