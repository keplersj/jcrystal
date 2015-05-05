require "./jni/*"

ifdef darwin
  @[Link(ldflags: "-install_name '$JAVA_HOME/jre/lib/libjava.dylib'")]
end
@[Link("java")]
lib JNI

end
