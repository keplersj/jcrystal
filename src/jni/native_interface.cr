require "./objects"
require "./primitives"
require "./definitions"
require "./java_vm"
require "./constants"

lib JNI
  struct JNINativeInterface
    reserved0: Void
    reserved1: Void
    reserved2: Void

    reserved3: Void
  end
  fun get_version = JNINativeInterface__GetVersion(env: JNIEnv): JInt

  fun define_class = JNINativeInterface__DefineClass(env: JNIEnv, name: UInt8*, loader: JObject, buf: JByte, len: JSize): JClass
  fun find_class = JNINativeInterface__FindClass(env: JNIEnv, name: UInt8*): JClass

  fun from_reflected_method = JNINativeInterface__FromReflectedMethod(env: JNIEnv, method: JObject): JMethodID
  fun from_reflected_field = JNINativeInterface__FromReflectedField(env: JNIEnv, field: JObject): JFieldID

  fun to_reflected_method = JNINativeInterface__ToReflectedMethod(env: JNIEnv, cls: JClass, methodID: JMethodID, isStacic: JBoolean): JObject

  fun get_superclass = JNINativeInterface__GetSuperclass(env: JNIEnv, sub: JClass): JClass
  fun is_assignable_from = JNINativeInterface__IsAssignableFrom(env: JNIEnv, sub: JClass, sup: JClass): JBoolean

  fun to_relfected_field = JNINativeInterface__ToReflectedField(env: JNIEnv, cls: JClass, fieldID: JFieldID, isStatic: JBoolean): JObject

  fun throw = JNINativeInterface__Throw(env: JNIEnv, obj: JThrowable): JInt
  fun throw_new = JNINativeInterface__ThrowNew(env: JNIEnv, clazz: JClass, msg: UInt8*): JInt
  fun exception_occurred =  JNINativeInterface__ExceptionOccurred(env: JNIEnv): JThrowable
  fun exception_describe = JNINativeInterface__ExceptionDescribe(env: JNIEnv): Void
  fun exception_clear = JNINativeInterface__ExceptionClear(env: JNIEnv): Void
  fun fatal_error = JNINativeInterface__FatalError(env: JNIEnv, msg: UInt8*): Void

  fun push_local_frame = JNINativeInterface__PushLocalFrame(env: JNIEnv, capacity: JInt): JInt
  fun pop_local_framce = JNINativeInterface__PopLocalFrame(env: JNIEnv, result: JObject): JObject

  fun new_global_ref = JNINativeInterface__NewGlobalRef(env: JNIEnv, lobj: JObject): JObject
  fun delete_global_ref = JNINativeInterface__DeleteGlobalRef(env: JNIEnv, gref: JObject): Void
  fun delete_local_ref = JNINativeInterface__DeleteLocalRef(env: JNIEnv, obj: JObject): Void
  fun is_same_object = JNINativeInterface__IsSameObject(env: JNIEnv, obj: JObject, obj: JObject): JBoolean
  fun new_local_ref = JNINativeInterface__NewLocalRef(env: JNIEnv, ref: JObject): JObject
  fun ensure_local_capacity = JNINativeInterface__EnsureLocalCapacity(env: JNIEnv, capacity: JInt):  JInt

  fun alloc_object = JNINativeInterface__AllocObject(env: JNIEnv, clazz: JClass): JObject
  fun new_object = JNINativeInterface__NewObject(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JObject
  fun new_object_a = JNINativeInterface__NewObjectA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun get_object_class = JNINativeInterface__GetObjectClass(env: JNIEnv, obj: JObject): JClass
  fun is_instance_of = JNINativeInterface__IsInstanceOf(env: JNIEnv, obj: JObject, clazz: JClass): JBoolean

  fun get_method_id = JNINativeInterface__GetMethodID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JMethodID

  fun call_object_method = JNINativeInterface__CallObjectMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JObject
  fun call_object_method_a = JNINativeInterface__CallObjectMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JObject

  fun call_boolean_method = JNINativeInterface__CallBooleanMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JBoolean
  fun call_boolean_method_a= JNINativeInterface__CallBooleanMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JBoolean

  fun call_byte_method = JNINativeInterface__CallByteMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JByte
  fun call_byte_method_a = JNINativeInterface__CallByteMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JByte

  fun call_char_method = JNINativeInterface__CallCharMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JChar
  fun call_char_method_a = JNINativeInterface__CallCharMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JChar

  fun call_short_method = JNINativeInterface__CallShortMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JShort
  fun call_short_method_a = JNINativeInterface__CallShortMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JShort

  fun call_int_method = JNINativeInterface__CallIntMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JInt
  fun call_int_method_a = JNINativeInterface__CallIntMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JInt

  fun call_long_method = JNINativeInterface__CallLongMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JLong
  fun call_long_method_a = JNINativeInterface__CallLongMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JLong

  fun call_float_method = JNINativeInterface__CallFloatMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JFloat
  fun call_float_method_a = JNINativeInterface__CallFloatMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JFloat

  fun call_double_method = CallDoubleMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JDouble
  fun call_double_method_a = CallDoubleMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JDouble

  fun call_void_method = CallVoidMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): Void
  fun call_void_method_a = CallVoidMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): Void

  fun call_nonvirtual_object_method = CallNonvirtualObjectMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JObject
  fun call_nonvirtual_object_method_a = CallNonvirtualObjectMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun call_nonvirtual_boolean_method = CallNonvirtualBooleanMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JBoolean
  fun call_nonvirtual_boolean_method_a = CallNonvirtualBooleanMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JBoolean

  fun call_nonvirtual_byte_method = CallNonvirtualByteMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JByte
  fun call_nonvirtual_byte_method_a = CallNonvirtualByteMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JByte

  fun call_nonvirtual_char_method = CallNonvirtualCharMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JChar
  fun call_nonvirtual_char_method_a = CallNonvirtualCharMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JChar

  fun call_nonvirtual_short_method = CallNonvirtualShortMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JShort
  fun call_nonvirtual_short_method_a = CallNonvirtualShortMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JShort

  fun call_nonvirtual_int_method= CallNonvirtualIntMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JInt
  fun call_nonvirtual_int_method_a = CallNonvirtualIntMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JInt

  fun call_nonvirtual_long_method = CallNonvirtualLongMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JLong
  fun call_nonvirtual_long_method_a = CallNonvirtualLongMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JLong

  fun call_nonvirtual_float_method = CallNonvirtualFloatMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JFloat
  fun call_nonvirtual_float_method_a = CallNonvirtualFloatMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JFloat

  fun call_nonvirtual_double_method = CallNonvirtualDoubleMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JDouble
  fun call_nonvirtual_double_method_a = CallNonvirtualDoubleMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JDouble

  fun call_nonvirtual_void_method = CallNonvirtualVoidMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): Void
  fun call_nonvirtual_void_method_a = CallNonvirtualVoidMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): Void

  fun get_field_id = GetFieldID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JFieldID

  fun get_object_field = GetObjectField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JObject
  fun get_boolean_field = GetBooleanField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JBoolean
  fun get_byte_field = GetByteField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JByte
  fun get_char_field = GetCharField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JChar
  fun get_short_field = GetShortField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JShort
  fun get_int_field = GetIntField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JInt
  fun get_long_field = GetLongField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JLong
  fun get_float_field = GetFloatField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JFloat
  fun get_double_field = GetDoubleField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JDouble

  fun set_object_field = SetObjectField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JObject): Void
  fun set_boolean_field = SetBooleanField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JBoolean): Void
  fun set_byte_field = SetByteField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JByte): Void
  fun set_char_field = SetCharField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JChar): Void
  fun set_short_field = SetShortField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JShort): Void
  fun set_int_field = SetIntField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JInt): Void
  fun set_long_field = SetLongField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JLong): Void
  fun set_float_field = SetFloatField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JFloat): Void
  fun set_double_field = SetDoubleField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JDouble): Void

  fun get_static_method_id = GetStaticMethodID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JMethodID

  fun call_static_object_method = CallStaticObjectMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JObject
  fun call_static_object_method_a = CallStaticObjectMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun call_static_boolean_method = CallStaticBooleanMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JBoolean
  fun call_static_boolean_method_a = CallStaticBooleanMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JBoolean

  fun call_static_byte_method = CallStaticByteMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JByte
  fun call_static_byte_method_a = CallStaticByteMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JByte

  fun call_static_char_method = CallStaticCharMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JChar
  fun call_static_char_method_a = CallStaticCharMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JChar

  fun call_static_short_method = CallStaticShortMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JShort
  fun call_static_short_method_a = CallStaticShortMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JShort

  fun call_static_int_method = CallStaticIntMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JInt
  fun call_static_int_method_a = CallStaticIntMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JInt

  fun call_static_long_method = CallStaticLongMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JLong
  fun call_static_long_method_a = CallStaticLongMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JLong

  fun call_static_float_method = CallStaticFloatMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JFloat
  fun call_static_float_method_a = CallStaticFloatMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JFloat

  fun call_static_double_method = CallStaticDoubleMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JDouble
  fun call_static_double_method_a = CallStaticDoubleMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JDouble

  fun call_static_void_method = CallStaticVoidMethod(env: JNIEnv, cls: JClass, methodID: JMethodID, ...): Void
  fun call_static_void_method_a = CallStaticVoidMethodA(env: JNIEnv, cls: JClass, methodID: JMethodID, args: JValue*): Void

  fun get_static_field_id = GetStaticFieldID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JFieldID
  fun get_static_object_field = GetStaticObjectField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JObject
  fun get_static_boolean_field = GetStaticBooleanField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JBoolean
  fun get_static_byte_field = GetStaticByteField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JByte
  fun get_static_char_field = GetStaticCharField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JChar
  fun get_static_short_field = GetStaticShortField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JShort
  fun get_static_int_field = GetStaticIntField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JInt
  fun get_static_long_field = GetStaticLongField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JLong
  fun get_static_float_field = GetStaticFloatField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JFloat
  fun get_static_double_field = GetStaticDoubleField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JDouble

  fun set_static_object_field = SetStaticObjectField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JObject): Void
  fun set_static_boolean_field = SetStaticBooleanField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JBoolean): Void
  fun set_static_byte_field = SetStaticByteField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JByte): Void
  fun set_static_char_field = SetStaticCharField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JChar): Void
  fun set_static_short_field = SetStaticShortField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JShort): Void
  fun set_static_int_field = SetStaticIntField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JInt): Void
  fun set_static_long_field = SetStaticLongField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JLong): Void
  fun set_static_float_field = SetStaticFloatField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JFloat): Void
  fun set_static_double_field = SetStaticDoubleField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JDouble): Void

  fun new_string = NewString(env: JNIEnv, unicode: UInt8*, len: JSize): JString
  fun get_string_length = GetStringLength(env: JNIEnv, str: JString): JSize
  fun get_string_chars = GetStringChars(env: JNIEnv, str: JString, isCopy: JBoolean): JString
  fun release_string_chars = ReleaseStringChars(env: JNIEnv, str: JString, chars: JString): Void

  fun new_string_utf = JNINativeInterface__NewStringUTF(env: JNIEnv, utf: UInt8*): JString
  fun new_string_utf_length = JNINativeInterface__GetStringUTFLength(env: JNIEnv, str: JString): JSize
  fun get_string_utf_chars = JNINativeInterface__GetStringUTFChars(env: JNIEnv, str: UInt8*, isCopy: JBoolean): UInt8*
  fun release_string_utf_chars = JNINativeInterface__ReleaseStringUTFChars(env: JNIEnv, str: JString, chars: UInt8*): Void

  fun get_array_length = JNINativeInterface__GetArrayLength(env: JNIEnv, array: JArray): JSize

  fun get_object_array = JNINativeInterface__NewObjectArray(env: JNIEnv, len: JSize, clazz: JClass, init: JObject): JObjectArray
  fun get_object_array_element = JNINativeInterface__GetObjectArrayElement(env: JNIEnv, array: JObjectArray, index: JSize): JObject
  fun set_object_array_element = JNINativeInterface__SetObjectArrayElement(env: JNIEnv, array: JObjectArray, index: JSize, val: JObject): Void

  fun new_boolean_array = JNINativeInterface__NewBooleanArray(env: JNIEnv, len: JSize): JBooleanArray
  fun new_byte_array = JNINativeInterface__NewByteArray(env: JNIEnv, len: JSize): JByteArray
  fun new_char_array = JNINativeInterface__NewCharArray(env: JNIEnv, len: JSize): JCharArray
  fun new_short_array = JNINativeInterface__NewShortArray(env: JNIEnv, len: JSize): JShortArray
  fun new_int_array = JNINativeInterface__NewIntArray(env: JNIEnv, len: JSize): JIntArray
  fun new_long_array = JNINativeInterface__NewLongArray(env: JNIEnv, len: JSize): JLongArray
  fun new_float_array = JNINativeInterface__NewFloatArray(env: JNIEnv, len: JSize): JFloatArray
  fun new_double_array = JNINativeInterface__NewDoubleArray(env: JNIEnv, len: JSize): JDoubleArray

  fun get_boolean_array_elements = JNINativeInterface__GetBooleanArrayElements(env: JNIEnv, array: JBooleanArray, isCopy: JBoolean): JBoolean*
  fun get_byte_array_elements = JNINativeInterface__GetByteArrayElements(env: JNIEnv, array: JByteArray, isCopy: JBoolean): JByte*
  fun get_char_array_elements = JNINativeInterface__GetCharArrayElements(env: JNIEnv, array: JCharArray, isCopy: JBoolean): JString
  fun get_short_array_elements = JNINativeInterface__GetShortArrayElements(env: JNIEnv, array: JShortArray, isCopy: JBoolean): JShort*
  fun get_int_array_elements = JNINativeInterface__GetIntArrayElements(env: JNIEnv, array: JIntArray, isCopy: JBoolean): JInt*
  fun get_long_array_elements = JNINativeInterface__GetLongArrayElements(env: JNIEnv, array: JLongArray, isCopy: JBoolean): JLong*
  fun get_float_array_elements = JNINativeInterface__GetFloatArrayElements(env: JNIEnv, array: JFloatArray, isCopy: JBoolean): JFloat*
  fun get_double_array_elements = JNINativeInterface__GetDoubleArrayElements(env: JNIEnv, array: JDoubleArray, isCopy: JBoolean): JDouble*

  fun release_boolean_array_elements = JNINativeInterface__ReleaseBooleanArrayElements(env: JNIEnv, array: JBooleanArray, elems: JBoolean*, mode: JInt): Void
  fun release_byte_array_elements = JNINativeInterface__ReleaseByteArrayElements(env: JNIEnv, array: JByteArray, elems: JByte*, mode: JInt): Void
  fun release_char_array_elements = JNINativeInterface__ReleaseCharArrayElements(env: JNIEnv, array: JCharArray, elems: JString, mode: JInt): Void
  fun release_short_array_elements = JNINativeInterface__ReleaseShortArrayElements(env: JNIEnv, array: JShortArray, elems: JShort*, mode: JInt): Void
  fun release_int_array_elements = JNINativeInterface__ReleaseIntArrayElements(env: JNIEnv, array: JIntArray, elems: JInt*, mode: JInt): Void
  fun release_long_array_elements = JNINativeInterface__ReleaseLongArrayElements(env: JNIEnv, array: JLongArray, elems: JLong*, mode: JInt): Void
  fun release_float_array_elements = JNINativeInterface__ReleaseFloatArrayElements(env: JNIEnv, array: JFloatArray, elems: JFloat*, mode: JInt): Void
  fun relase_double_array_elements = JNINativeInterface__ReleaseDoubleArrayElements(env: JNIEnv, array: JDoubleArray, elems: JDouble*, mode: JInt): Void

  fun get_boolean_array_region = JNINativeInterface__GetBooleanArrayRegion(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean): Void
  fun get_byte_array_region= JNINativeInterface__GetByteArrayRegion(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte): Void
  fun get_char_array_region = JNINativeInterface__GetCharArrayRegion(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar): Void
  fun get_short_array_region = JNINativeInterface__GetShortArrayRegion(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort): Void
  fun get_int_array_region = JNINativeInterface__GetIntArrayRegion(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt): Void
  fun get_long_array_region = JNINativeInterface__GetLongArrayRegion(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong): Void
  fun get_float_array_region = JNINativeInterface__GetFloatArrayRegion(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat): Void
  fun get_double_array_region = JNINativeInterface__GetDoubleArrayRegion(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble): Void

  fun set_boolean_array_region = JNINativeInterface__SetBooleanArrayRegion(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean): Void
  fun set_byte_array_region = JNINativeInterface__SetByteArrayRegion(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte): Void
  fun set_char_array_region = JNINativeInterface__SetCharArrayRegion(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar): Void
  fun set_short_array_region = JNINativeInterface__SetShortArrayRegion(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort): Void
  fun set_int_array_region = JNINativeInterface__SetIntArrayRegion(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt): Void
  fun set_long_array_region = JNINativeInterface__SetLongArrayRegion(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong): Void
  fun set_float_array_region = JNINativeInterface__SetFloatArrayRegion(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat): Void
  fun set_double_array_region = JNINativeInterface__SetDoubleArrayRegion(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble): Void

  fun register_natives = JNINativeInterface__RegisterNatives(env: JNIEnv, clazz: JClass, methods: JNINativeMethod*, nMethods: JInt): JInt
  fun unregister_natives = JNINativeInterface__UnregisterNatives(env: JNIEnv, clazz: JClass): JInt

  fun moniter_enter = JNINativeInterface__MonitorEnter(env: JNIEnv, obj: JObject): JInt
  fun moniter_exit = JNINativeInterface__MonitorExit(env: JNIEnv, obj: JObject): JInt

  fun get_java_vm = JNINativeInterface__GetJavaVM(env: JNIEnv, vm: JavaVM): JInt

  fun get_string_region = JNINativeInterface__GetStringRegion(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: JChar): Void
  fun get_string_utf_region = JNINativeInterface__GetStringUTFRegion(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: UInt8*): Void

  fun get_primitive_array_critical = JNINativeInterface__GetPrimitiveArrayCritical(env: JNIEnv, array: JArray, isCopy: JBoolean): Void*
  fun release_primitive_array_critical = JNINativeInterface__ReleasePrimitiveArrayCritical(env: JNIEnv, array: JArray, carray: Void, mode: JInt): Void

  fun get_string_critial = JNINativeInterface__GetStringCritical(env: JNIEnv, str: JString, isCopy: JBoolean): JString
  fun release_string_critical = JNINativeInterface__ReleaseStringCritical(env: JNIEnv, str: JString, cstring: JString): Void

  fun new_weal_global_ref = JNINativeInterface__NewWeakGlobalRef(env: JNIEnv, obj: JObject): JWeak
  fun delete_weak_global_ref = JNINativeInterface__DeleteWeakGlobalRef(env: JNIEnv, ref: JWeak): Void

  fun exception_check = JNINativeInterface__ExceptionCheck(env: JNIEnv): JBoolean

  fun new_direct_byte_buffer = JNINativeInterface__NewDirectByteBuffer(env: JNIEnv, address: Void*, capacity: JLong): JObject
  fun get_direct_buffer_address = JNINativeInterface__GetDirectBufferAddress(env: JNIEnv, buf: JObject): Void*
  fun get_direct_buffer_capacity = JNINativeInterface__GetDirectBufferCapacity(env: JNIEnv, buf: JObject): JLong

  # New JNI 1.6 Features

  fun get_object_ref_type = JNINativeInterface__GetObjectRefType(env: JNIEnv, obj: JObject): JObjectRefType
end

struct JNI::JNINativeInterface
    def get_version(env: JNIEnv)
    end

    def define_class(env: JNIEnv, name: String, loader: JObject, buf: JByte, len: JSize)
    end
    def find_class(env: JNIEnv, name: Char)
    end

    def from_reflected_method(env: JNIEnv, method: JObject)
    end
    def from_reflected_field(env: JNIEnv, field: JObject)
    end

    def to_reflected_method(env: JNIEnv, cls: JClass, methodID: JMethodID, isStacic: JBoolean)
    end

    def get_superclass(env: JNIEnv, sub: JClass)
    end
    def is_assignable_from(env: JNIEnv, sub: JClass, sup: JClass)
    end

    def to_relfected_field(env: JNIEnv, cls: JClass, fieldID: JFieldID, isStatic: JBoolean)
    end

    def throw(env: JNIEnv, obj: JThrowable)
    end
    def throw_new(env: JNIEnv, clazz: JClass, msg: String)
    end
    def exception_occurred(env: JNIEnv)
    end
    def exception_describe(env: JNIEnv)
    end
    def exception_clear(env: JNIEnv)
    end
    def fatal_error(env: JNIEnv, msg: String)
    end

    def push_local_frame(env: JNIEnv, capacity: JInt)
    end
    def pop_local_frame(env: JNIEnv, result: JObject)
    end

    def new_global_ref(env: JNIEnv, lobj: JObject)
    end
    def delete_global_ref(env: JNIEnv, gref: JObject)
    end
    def delete_local_ref(env: JNIEnv, obj: JObject)
    end
    def is_same_object(env: JNIEnv, obj: JObject, obj2: JObject)
    end
    def new_local_ref(env: JNIEnv, ref: JObject)
    end
    def ensure_local_capacity(env: JNIEnv, capacity: JInt)
    end

    def alloc_object(env: JNIEnv, clazz: JClass)
    end
    def new_object(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def new_object_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def get_object_class(env: JNIEnv, obj: JObject)
    end
    def is_instance_of(env: JNIEnv, obj: JObject, clazz: JClass)
    end

    def get_method_id(env: JNIEnv, clazz: JClass, name: String, sig: String)
    end

    def call_object_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_object_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_boolean_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_boolean_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_byte_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_byte_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_char_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_char_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_short_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_short_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_int_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_int_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_long_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_long_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_float_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_float_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_double_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_double_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_void_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    end
    def call_void_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_object_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_object_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_boolean_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_boolean_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_byte_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_byte_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_char_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_char_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_short_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_short_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_int_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_int_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_long_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_long_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_float_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_float_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_double_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_double_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_nonvirtual_void_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_nonvirtual_void_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def get_field_id(env: JNIEnv, clazz: JClass, name: String, sig: String)
    end

    def get_object_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_boolean_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_char_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_short_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_int_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_long_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_float_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end
    def get_double_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    end

    def set_object_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JObject)
    end
    def set_boolean_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JBoolean)
    end
    def set_byte_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JByte)
    end
    def set_char_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JChar)
    end
    def set_short_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JShort)
    end
    def set_int_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JInt)
    end
    def set_long_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JLong)
    end
    def set_float_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JFloat)
    end
    def set_double_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JDouble)
    end

    def get_static_method_id(env: JNIEnv, clazz: JClass, name: String, sig: String)
    end

    def call_static_object_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_object_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_boolean_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_boolean_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_byte_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_byte_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_char_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_char_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_short_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_short_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_int_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_int_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_long_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_long_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_float_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_float_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_double_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    end
    def call_static_double_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def call_static_void_method(env: JNIEnv, cls: JClass, methodID: JMethodID, *args)
    end
    def call_static_void_method_a(env: JNIEnv, cls: JClass, methodID: JMethodID, args: Array(JValue))
    end

    def get_static_field_id(env: JNIEnv, clazz: JClass, name: String, sig: String)
    end
    def get_static_object_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_boolean_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_byte_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_char_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_short_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_int_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_long_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_float_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end
    def get_static_double_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    end

    def set_static_object_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JObject)
    end
    def set_static_boolean_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JBoolean)
    end
    def set_static_byte_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JByte)
    end
    def set_static_char_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JChar)
    end
    def set_static_short_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JShort)
    end
    def set_static_int_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JInt)
    end
    def set_static_long_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JLong)
    end
    def set_static_float_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JFloat)
    end
    def set_static_double_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JDouble)
    end

    def new_string(env: JNIEnv, unicode: String, len: JSize)
    end
    def get_string_length(env: JNIEnv, str: JString)
    end
    def get_string_chars(env: JNIEnv, str: JString, isCopy: JBoolean)
    end
    def release_string_chars(env: JNIEnv, str: JString, chars: JString)
    end

    def new_string_utf(env: JNIEnv, utf: String)
    end
    def new_string_utf_length(env: JNIEnv, str: JString)
    end
    def get_string_utf_chars(env: JNIEnv, str: String, isCopy: JBoolean)
    end
    def release_string_utf_chars(env: JNIEnv, str: JString, chars: String)
    end

    def get_array_length(env: JNIEnv, array: JArray)
    end

    def get_object_array(env: JNIEnv, len: JSize, clazz: JClass, init: JObject)
    end
    def get_object_array_element(env: JNIEnv, array: JObjectArray, index: JSize)
    end
    def set_object_array_element(env: JNIEnv, array: JObjectArray, index: JSize, val: JObject)
    end

    def new_boolean_array(env: JNIEnv, len: JSize)
    end
    def new_byte_array(env: JNIEnv, len: JSize)
    end
    def new_char_array(env: JNIEnv, len: JSize)
    end
    def new_short_array(env: JNIEnv, len: JSize)
    end
    def new_int_array(env: JNIEnv, len: JSize)
    end
    def new_long_array(env: JNIEnv, len: JSize)
    end
    def new_float_array(env: JNIEnv, len: JSize)
    end
    def new_double_array(env: JNIEnv, len: JSize)
    end

    def get_boolean_array_elements(env: JNIEnv, array: JBooleanArray, isCopy: JBoolean)
    end
    def get_byte_array_elements(env: JNIEnv, array: JByteArray, isCopy: JBoolean)
    end
    def get_char_array_elements(env: JNIEnv, array: JCharArray, isCopy: JBoolean)
    end
    def get_short_array_elements(env: JNIEnv, array: JShortArray, isCopy: JBoolean)
    end
    def get_int_array_elements(env: JNIEnv, array: JIntArray, isCopy: JBoolean)
    end
    def get_long_array_elements(env: JNIEnv, array: JLongArray, isCopy: JBoolean)
    end
    def get_float_array_elements(env: JNIEnv, array: JFloatArray, isCopy: JBoolean)
    end
    def get_double_array_elements(env: JNIEnv, array: JDoubleArray, isCopy: JBoolean)
    end

    def release_boolean_array_elements(env: JNIEnv, array: JBooleanArray, elems: JBoolean*, mode: JInt)
    end
    def release_byte_array_elements(env: JNIEnv, array: JByteArray, elems: JByte*, mode: JInt)
    end
    def release_char_array_elements(env: JNIEnv, array: JCharArray, elems: JString, mode: JInt)
    end
    def release_short_array_elements(env: JNIEnv, array: JShortArray, elems: JShort*, mode: JInt)
    end
    def release_int_array_elements(env: JNIEnv, array: JIntArray, elems: JInt*, mode: JInt)
    end
    def release_long_array_elements(env: JNIEnv, array: JLongArray, elems: JLong*, mode: JInt)
    end
    def release_float_array_elements(env: JNIEnv, array: JFloatArray, elems: JFloat*, mode: JInt)
    end
    def relase_double_array_elements(env: JNIEnv, array: JDoubleArray, elems: JDouble*, mode: JInt)
    end

    def get_boolean_array_region(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    end
    def get_byte_array_region(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte)
    end
    def get_char_array_region(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar)
    end
    def get_short_array_region(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort)
    end
    def get_int_array_region(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt)
    end
    def get_long_array_region(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong)
    end
    def get_float_array_region(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    end
    def get_double_array_region(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
    end

    def set_boolean_array_region(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    end
    def set_byte_array_region(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte)
    end
    def set_char_array_region(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar)
    end
    def set_short_array_region(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort)
    end
    def set_int_array_region(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt)
    end
    def set_long_array_region(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong)
    end
    def set_float_array_region(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    end
    def set_double_array_region(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
    end

    def register_natives(env: JNIEnv, clazz: JClass, methods: JNINativeMethod*, nMethods: JInt)
    end
    def unregister_natives(env: JNIEnv, clazz: JClass)
    end

    def moniter_enter(env: JNIEnv, obj: JObject)
    end
    def moniter_exit(env: JNIEnv, obj: JObject)
    end

    def get_java_vm(env: JNIEnv, vm: JavaVM)
    end

    def get_string_region(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: JChar)
    end
    def get_string_utf_region(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: String)
    end

    def get_primitive_array_critical(env: JNIEnv, array: JArray, isCopy: JBoolean)
    end
    def release_primitive_array_critical(env: JNIEnv, array: JArray, carray: Void, mode: JInt)
    end

    def get_string_critial(env: JNIEnv, str: JString, isCopy: JBoolean)
    end
    def release_string_critical(env: JNIEnv, str: JString, cstring: JString)
    end

    def new_weal_global_ref(env: JNIEnv, obj: JObject)
    end
    def delete_weak_global_ref(env: JNIEnv, ref: JWeak)
    end

    def exception_check(env: JNIEnv)
    end

    def new_direct_byte_buffer(env: JNIEnv, address: Void*, capacity: JLong)
    end
    def get_direct_buffer_address(env: JNIEnv, buf: JObject)
    end
    def get_direct_buffer_capacity(env: JNIEnv, buf: JObject)
    end
    
    def get_object_ref_type(env: JNIEnv, obj: JObject)
    end
end
