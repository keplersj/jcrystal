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
  fun jnini_get_version = JNINativeInterface__GetVersion(env: JNIEnv): JInt

  fun jnini_define_class = JNINativeInterface__DefineClass(env: JNIEnv, name: UInt8*, loader: JObject, buf: JByte, len: JSize): JClass
  fun jnini_find_class = JNINativeInterface__FindClass(env: JNIEnv, name: Char): JClass

  fun jnini_from_reflected_method = JNINativeInterface__FromReflectedMethod(env: JNIEnv, method: JObject): JMethodID
  fun jnini_from_reflected_field = JNINativeInterface__FromReflectedField(env: JNIEnv, field: JObject): JFieldID

  fun jnini_to_reflected_method = JNINativeInterface__ToReflectedMethod(env: JNIEnv, cls: JClass, methodID: JMethodID, isStacic: JBoolean): JObject

  fun jnini_get_superclass = JNINativeInterface__GetSuperclass(env: JNIEnv, sub: JClass): JClass
  fun jnini_is_assignable_from = JNINativeInterface__IsAssignableFrom(env: JNIEnv, sub: JClass, sup: JClass): JBoolean

  fun jnini_to_relfected_field = JNINativeInterface__ToReflectedField(env: JNIEnv, cls: JClass, fieldID: JFieldID, isStatic: JBoolean): JObject

  fun jnini_throw = JNINativeInterface__Throw(env: JNIEnv, obj: JThrowable): JInt
  fun jnini_throw_new = JNINativeInterface__ThrowNew(env: JNIEnv, clazz: JClass, msg: UInt8*): JInt
  fun jnini_exception_occurred =  JNINativeInterface__ExceptionOccurred(env: JNIEnv): JThrowable
  fun jnini_exception_describe = JNINativeInterface__ExceptionDescribe(env: JNIEnv): Void
  fun jnini_exception_clear = JNINativeInterface__ExceptionClear(env: JNIEnv): Void
  fun jnini_fatal_error = JNINativeInterface__FatalError(env: JNIEnv, msg: UInt8*): Void

  fun jnini_push_local_frame = JNINativeInterface__PushLocalFrame(env: JNIEnv, capacity: JInt): JInt
  fun jnini_pop_local_framce = JNINativeInterface__PopLocalFrame(env: JNIEnv, result: JObject): JObject

  fun jnini_new_global_ref = JNINativeInterface__NewGlobalRef(env: JNIEnv, lobj: JObject): JObject
  fun jnini_delete_global_ref = JNINativeInterface__DeleteGlobalRef(env: JNIEnv, gref: JObject): Void
  fun jnini_delete_local_ref = JNINativeInterface__DeleteLocalRef(env: JNIEnv, obj: JObject): Void
  fun jnini_is_same_object = JNINativeInterface__IsSameObject(env: JNIEnv, obj: JObject, obj: JObject): JBoolean
  fun jnini_new_local_ref = JNINativeInterface__NewLocalRef(env: JNIEnv, ref: JObject): JObject
  fun jnini_ensure_local_capacity = JNINativeInterface__EnsureLocalCapacity(env: JNIEnv, capacity: JInt):  JInt

  fun jnini_alloc_object = JNINativeInterface__AllocObject(env: JNIEnv, clazz: JClass): JObject
  fun jnini_new_object = JNINativeInterface__NewObject(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JObject
  fun jnini_new_object_a = JNINativeInterface__NewObjectA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun jnini_get_object_class = JNINativeInterface__GetObjectClass(env: JNIEnv, obj: JObject): JClass
  fun jnini_is_instance_of = JNINativeInterface__IsInstanceOf(env: JNIEnv, obj: JObject, clazz: JClass): JBoolean

  fun jnini_get_method_id = JNINativeInterface__GetMethodID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JMethodID

  fun jnini_call_object_method = JNINativeInterface__CallObjectMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JObject
  fun jnini_call_object_method_a = JNINativeInterface__CallObjectMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JObject

  fun jnini_call_boolean_method = JNINativeInterface__CallBooleanMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JBoolean
  fun jnini_call_boolean_method_a= JNINativeInterface__CallBooleanMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JBoolean

  fun jnini_call_byte_method = JNINativeInterface__CallByteMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JByte
  fun jnini_call_byte_method_a = JNINativeInterface__CallByteMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JByte

  fun jnini_call_char_method = JNINativeInterface__CallCharMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JChar
  fun jnini_call_char_method_a = JNINativeInterface__CallCharMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JChar

  fun jnini_call_short_method = JNINativeInterface__CallShortMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JShort
  fun jnini_call_short_method_a = JNINativeInterface__CallShortMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JShort

  fun jnini_call_int_method = JNINativeInterface__CallIntMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JInt
  fun jnini_call_int_method_a = JNINativeInterface__CallIntMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JInt

  fun jnini_call_long_method = JNINativeInterface__CallLongMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JLong
  fun jnini_call_long_method_a = JNINativeInterface__CallLongMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JLong

  fun jnini_call_float_method = JNINativeInterface__CallFloatMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JFloat
  fun jnini_call_float_method_a = JNINativeInterface__CallFloatMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JFloat

  fun jnini_call_double_method = CallDoubleMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): JDouble
  fun jnini_call_double_method_a = CallDoubleMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): JDouble

  fun jnini_call_void_method = CallVoidMethod(env: JNIEnv, obj: JObject, methodID: JMethodID, ...): Void
  fun jnini_call_void_method_a = CallVoidMethodA(env: JNIEnv, obj: JObject, methodID: JMethodID, args: JValue*): Void

  fun jnini_call_nonvirtual_object_method = CallNonvirtualObjectMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JObject
  fun jnini_call_nonvirtual_object_method_a = CallNonvirtualObjectMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun jnini_call_nonvirtual_boolean_method = CallNonvirtualBooleanMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JBoolean
  fun jnini_call_nonvirtual_boolean_method_a = CallNonvirtualBooleanMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JBoolean

  fun jnini_call_nonvirtual_byte_method = CallNonvirtualByteMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JByte
  fun jnini_call_nonvirtual_byte_method_a = CallNonvirtualByteMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JByte

  fun jnini_call_nonvirtual_char_method = CallNonvirtualCharMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JChar
  fun jnini_call_nonvirtual_char_method_a = CallNonvirtualCharMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JChar

  fun jnini_call_nonvirtual_short_method = CallNonvirtualShortMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JShort
  fun jnini_call_nonvirtual_short_method_a = CallNonvirtualShortMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JShort

  fun jnini_call_nonvirtual_int_method= CallNonvirtualIntMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JInt
  fun jnini_call_nonvirtual_int_method_a = CallNonvirtualIntMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JInt

  fun jnini_call_nonvirtual_long_method = CallNonvirtualLongMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JLong
  fun jnini_call_nonvirtual_long_method_a = CallNonvirtualLongMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JLong

  fun jnini_call_nonvirtual_float_method = CallNonvirtualFloatMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JFloat
  fun jnini_call_nonvirtual_float_method_a = CallNonvirtualFloatMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JFloat

  fun jnini_call_nonvirtual_double_method = CallNonvirtualDoubleMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): JDouble
  fun jnini_call_nonvirtual_double_method_a = CallNonvirtualDoubleMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): JDouble

  fun jnini_call_nonvirtual_void_method = CallNonvirtualVoidMethod(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, ...): Void
  fun jnini_call_nonvirtual_void_method_a = CallNonvirtualVoidMethodA(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: JValue*): Void

  fun jnini_get_field_id = GetFieldID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JFieldID

  fun jnini_get_object_field = GetObjectField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JObject
  fun jnini_get_boolean_field = GetBooleanField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JBoolean
  fun jnini_get_byte_field = GetByteField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JByte
  fun jnini_get_char_field = GetCharField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JChar
  fun jnini_get_short_field = GetShortField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JShort
  fun jnini_get_int_field = GetIntField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JInt
  fun jnini_get_long_field = GetLongField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JLong
  fun jnini_get_float_field = GetFloatField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JFloat
  fun jnini_get_double_field = GetDoubleField(env: JNIEnv, obj: JObject, fieldID: JFieldID): JDouble

  fun jnini_set_object_field = SetObjectField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JObject): Void
  fun jnini_set_boolean_field = SetBooleanField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JBoolean): Void
  fun jnini_set_byte_field = SetByteField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JByte): Void
  fun jnini_set_char_field = SetCharField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JChar): Void
  fun jnini_set_short_field = SetShortField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JShort): Void
  fun jnini_set_int_field = SetIntField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JInt): Void
  fun jnini_set_long_field = SetLongField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JLong): Void
  fun jnini_set_float_field = SetFloatField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JFloat): Void
  fun jnini_set_double_field = SetDoubleField(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JDouble): Void

  fun jnini_get_static_method_id = GetStaticMethodID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JMethodID

  fun jnini_call_static_object_method = CallStaticObjectMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JObject
  fun jnini_call_static_object_method_a = CallStaticObjectMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JObject

  fun jnini_call_static_boolean_method = CallStaticBooleanMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JBoolean
  fun jnini_call_static_boolean_method_a = CallStaticBooleanMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JBoolean

  fun jnini_call_static_byte_method = CallStaticByteMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JByte
  fun jnini_call_static_byte_method_a = CallStaticByteMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JByte

  fun jnini_call_static_char_method = CallStaticCharMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JChar
  fun jnini_call_static_char_method_a = CallStaticCharMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JChar

  fun jnini_call_static_short_method = CallStaticShortMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JShort
  fun jnini_call_static_short_method_a = CallStaticShortMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JShort

  fun jnini_call_static_int_method = CallStaticIntMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JInt
  fun jnini_call_static_int_method_a = CallStaticIntMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JInt

  fun jnini_call_static_long_method = CallStaticLongMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JLong
  fun jnini_call_static_long_method_a = CallStaticLongMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JLong

  fun jnini_call_static_float_method = CallStaticFloatMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JFloat
  fun jnini_call_static_float_method_a = CallStaticFloatMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JFloat

  fun jnini_call_static_double_method = CallStaticDoubleMethod(env: JNIEnv, clazz: JClass, methodID: JMethodID, ...): JDouble
  fun jnini_call_static_double_method_a = CallStaticDoubleMethodA(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: JValue*): JDouble

  fun jnini_call_static_void_method = CallStaticVoidMethod(env: JNIEnv, cls: JClass, methodID: JMethodID, ...): Void
  fun jnini_call_static_void_method_a = CallStaticVoidMethodA(env: JNIEnv, cls: JClass, methodID: JMethodID, args: JValue*): Void

  fun jnini_get_static_field_id = GetStaticFieldID(env: JNIEnv, clazz: JClass, name: UInt8*, sig: UInt8*): JFieldID
  fun jnini_get_static_object_field = GetStaticObjectField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JObject
  fun jnini_get_static_boolean_field = GetStaticBooleanField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JBoolean
  fun jnini_get_static_byte_field = GetStaticByteField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JByte
  fun jnini_get_static_char_field = GetStaticCharField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JChar
  fun jnini_get_static_short_field = GetStaticShortField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JShort
  fun jnini_get_static_int_field = GetStaticIntField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JInt
  fun jnini_get_static_long_field = GetStaticLongField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JLong
  fun jnini_get_static_float_field = GetStaticFloatField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JFloat
  fun jnini_get_static_double_field = GetStaticDoubleField(env: JNIEnv, clazz: JClass, fieldID: JFieldID): JDouble

  fun jnini_set_static_object_field = SetStaticObjectField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JObject): Void
  fun jnini_set_static_boolean_field = SetStaticBooleanField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JBoolean): Void
  fun jnini_set_static_byte_field = SetStaticByteField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JByte): Void
  fun jnini_set_static_char_field = SetStaticCharField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JChar): Void
  fun jnini_set_static_short_field = SetStaticShortField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JShort): Void
  fun jnini_set_static_int_field = SetStaticIntField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JInt): Void
  fun jnini_set_static_long_field = SetStaticLongField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JLong): Void
  fun jnini_set_static_float_field = SetStaticFloatField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JFloat): Void
  fun jnini_set_static_double_field = SetStaticDoubleField(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JDouble): Void

  fun jnini_new_string = NewString(env: JNIEnv, unicode: UInt8*, len: JSize): JString
  fun jnini_get_string_length = GetStringLength(env: JNIEnv, str: JString): JSize
  fun jnini_get_string_chars = GetStringChars(env: JNIEnv, str: JString, isCopy: JBoolean): JString
  fun jnini_release_string_chars = ReleaseStringChars(env: JNIEnv, str: JString, chars: JString): Void

  fun jnini_new_string_utf = JNINativeInterface__NewStringUTF(env: JNIEnv, utf: UInt8*): JString
  fun jnini_new_string_utf_length = JNINativeInterface__GetStringUTFLength(env: JNIEnv, str: JString): JSize
  fun jnini_get_string_utf_chars = JNINativeInterface__GetStringUTFChars(env: JNIEnv, str: UInt8*, isCopy: JBoolean): UInt8*
  fun jnini_release_string_utf_chars = JNINativeInterface__ReleaseStringUTFChars(env: JNIEnv, str: JString, chars: UInt8*): Void

  fun jnini_get_array_length = JNINativeInterface__GetArrayLength(env: JNIEnv, array: JArray): JSize

  fun jnini_get_object_array = JNINativeInterface__NewObjectArray(env: JNIEnv, len: JSize, clazz: JClass, init: JObject): JObjectArray
  fun jnini_get_object_array_element = JNINativeInterface__GetObjectArrayElement(env: JNIEnv, array: JObjectArray, index: JSize): JObject
  fun jnini_set_object_array_element = JNINativeInterface__SetObjectArrayElement(env: JNIEnv, array: JObjectArray, index: JSize, val: JObject): Void

  fun jnini_new_boolean_array = JNINativeInterface__NewBooleanArray(env: JNIEnv, len: JSize): JBooleanArray
  fun jnini_new_byte_array = JNINativeInterface__NewByteArray(env: JNIEnv, len: JSize): JByteArray
  fun jnini_new_char_array = JNINativeInterface__NewCharArray(env: JNIEnv, len: JSize): JCharArray
  fun jnini_new_short_array = JNINativeInterface__NewShortArray(env: JNIEnv, len: JSize): JShortArray
  fun jnini_new_int_array = JNINativeInterface__NewIntArray(env: JNIEnv, len: JSize): JIntArray
  fun jnini_new_long_array = JNINativeInterface__NewLongArray(env: JNIEnv, len: JSize): JLongArray
  fun jnini_new_float_array = JNINativeInterface__NewFloatArray(env: JNIEnv, len: JSize): JFloatArray
  fun jnini_new_double_array = JNINativeInterface__NewDoubleArray(env: JNIEnv, len: JSize): JDoubleArray

  fun jnini_get_boolean_array_elements = JNINativeInterface__GetBooleanArrayElements(env: JNIEnv, array: JBooleanArray, isCopy: JBoolean): JBoolean*
  fun jnini_get_byte_array_elements = JNINativeInterface__GetByteArrayElements(env: JNIEnv, array: JByteArray, isCopy: JBoolean): JByte*
  fun jnini_get_char_array_elements = JNINativeInterface__GetCharArrayElements(env: JNIEnv, array: JCharArray, isCopy: JBoolean): JString
  fun jnini_get_short_array_elements = JNINativeInterface__GetShortArrayElements(env: JNIEnv, array: JShortArray, isCopy: JBoolean): JShort*
  fun jnini_get_int_array_elements = JNINativeInterface__GetIntArrayElements(env: JNIEnv, array: JIntArray, isCopy: JBoolean): JInt*
  fun jnini_get_long_array_elements = JNINativeInterface__GetLongArrayElements(env: JNIEnv, array: JLongArray, isCopy: JBoolean): JLong*
  fun jnini_get_float_array_elements = JNINativeInterface__GetFloatArrayElements(env: JNIEnv, array: JFloatArray, isCopy: JBoolean): JFloat*
  fun jnini_get_double_array_elements = JNINativeInterface__GetDoubleArrayElements(env: JNIEnv, array: JDoubleArray, isCopy: JBoolean): JDouble*

  fun jnini_release_boolean_array_elements = JNINativeInterface__ReleaseBooleanArrayElements(env: JNIEnv, array: JBooleanArray, elems: JBoolean*, mode: JInt): Void
  fun jnini_release_byte_array_elements = JNINativeInterface__ReleaseByteArrayElements(env: JNIEnv, array: JByteArray, elems: JByte*, mode: JInt): Void
  fun jnini_release_char_array_elements = JNINativeInterface__ReleaseCharArrayElements(env: JNIEnv, array: JCharArray, elems: JString, mode: JInt): Void
  fun jnini_release_short_array_elements = JNINativeInterface__ReleaseShortArrayElements(env: JNIEnv, array: JShortArray, elems: JShort*, mode: JInt): Void
  fun jnini_release_int_array_elements = JNINativeInterface__ReleaseIntArrayElements(env: JNIEnv, array: JIntArray, elems: JInt*, mode: JInt): Void
  fun jnini_release_long_array_elements = JNINativeInterface__ReleaseLongArrayElements(env: JNIEnv, array: JLongArray, elems: JLong*, mode: JInt): Void
  fun jnini_release_float_array_elements = JNINativeInterface__ReleaseFloatArrayElements(env: JNIEnv, array: JFloatArray, elems: JFloat*, mode: JInt): Void
  fun jnini_relase_double_array_elements = JNINativeInterface__ReleaseDoubleArrayElements(env: JNIEnv, array: JDoubleArray, elems: JDouble*, mode: JInt): Void

  fun jnini_get_boolean_array_region = JNINativeInterface__GetBooleanArrayRegion(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean): Void
  fun jnini_get_byte_array_region= JNINativeInterface__GetByteArrayRegion(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte): Void
  fun jnini_get_char_array_region = JNINativeInterface__GetCharArrayRegion(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar): Void
  fun jnini_get_short_array_region = JNINativeInterface__GetShortArrayRegion(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort): Void
  fun jnini_get_int_array_region = JNINativeInterface__GetIntArrayRegion(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt): Void
  fun jnini_get_long_array_region = JNINativeInterface__GetLongArrayRegion(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong): Void
  fun jnini_get_float_array_region = JNINativeInterface__GetFloatArrayRegion(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat): Void
  fun jnini_get_double_array_region = JNINativeInterface__GetDoubleArrayRegion(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble): Void

  fun jnini_set_boolean_array_region = JNINativeInterface__SetBooleanArrayRegion(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean): Void
  fun jnini_set_byte_array_region = JNINativeInterface__SetByteArrayRegion(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte): Void
  fun jnini_set_char_array_region = JNINativeInterface__SetCharArrayRegion(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar): Void
  fun jnini_set_short_array_region = JNINativeInterface__SetShortArrayRegion(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort): Void
  fun jnini_set_int_array_region = JNINativeInterface__SetIntArrayRegion(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt): Void
  fun jnini_set_long_array_region = JNINativeInterface__SetLongArrayRegion(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong): Void
  fun jnini_set_float_array_region = JNINativeInterface__SetFloatArrayRegion(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat): Void
  fun jnini_set_double_array_region = JNINativeInterface__SetDoubleArrayRegion(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble): Void

  fun jnini_register_natives = JNINativeInterface__RegisterNatives(env: JNIEnv, clazz: JClass, methods: JNINativeMethod*, nMethods: JInt): JInt
  fun jnini_unregister_natives = JNINativeInterface__UnregisterNatives(env: JNIEnv, clazz: JClass): JInt

  fun jnini_moniter_enter = JNINativeInterface__MonitorEnter(env: JNIEnv, obj: JObject): JInt
  fun jnini_moniter_exit = JNINativeInterface__MonitorExit(env: JNIEnv, obj: JObject): JInt

  fun jnini_get_java_vm = JNINativeInterface__GetJavaVM(env: JNIEnv, vm: JavaVM): JInt

  fun jnini_get_string_region = JNINativeInterface__GetStringRegion(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: JChar): Void
  fun jnini_get_string_utf_region = JNINativeInterface__GetStringUTFRegion(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: UInt8*): Void

  fun jnini_get_primitive_array_critical = JNINativeInterface__GetPrimitiveArrayCritical(env: JNIEnv, array: JArray, isCopy: JBoolean): Void*
  fun jnini_release_primitive_array_critical = JNINativeInterface__ReleasePrimitiveArrayCritical(env: JNIEnv, array: JArray, carray: Void, mode: JInt): Void

  fun jnini_get_string_critial = JNINativeInterface__GetStringCritical(env: JNIEnv, str: JString, isCopy: JBoolean): JString
  fun jnini_release_string_critical = JNINativeInterface__ReleaseStringCritical(env: JNIEnv, str: JString, cstring: JString): Void

  fun jnini_new_weal_global_ref = JNINativeInterface__NewWeakGlobalRef(env: JNIEnv, obj: JObject): JWeak
  fun jnini_delete_weak_global_ref = JNINativeInterface__DeleteWeakGlobalRef(env: JNIEnv, ref: JWeak): Void

  fun jnini_exception_check = JNINativeInterface__ExceptionCheck(env: JNIEnv): JBoolean

  fun jnini_new_direct_byte_buffer = JNINativeInterface__NewDirectByteBuffer(env: JNIEnv, address: Void*, capacity: JLong): JObject
  fun jnini_get_direct_buffer_address = JNINativeInterface__GetDirectBufferAddress(env: JNIEnv, buf: JObject): Void*
  fun jnini_get_direct_buffer_capacity = JNINativeInterface__GetDirectBufferCapacity(env: JNIEnv, buf: JObject): JLong

  # New JNI 1.6 Features

  fun jnini_get_object_ref_type = JNINativeInterface__GetObjectRefType(env: JNIEnv, obj: JObject): JObjectRefType
end

struct JNI::JNINativeInterface
    abstract def get_version(env: JNIEnv)

    abstract def define_class(env: JNIEnv, name: String, loader: JObject, buf: JByte, len: JSize)
    abstract def find_class(env: JNIEnv, name: Char)

    abstract def from_reflected_method(env: JNIEnv, method: JObject)
    abstract def from_reflected_field(env: JNIEnv, field: JObject)

    abstract def to_reflected_method(env: JNIEnv, cls: JClass, methodID: JMethodID, isStacic: JBoolean)

    abstract def get_superclass(env: JNIEnv, sub: JClass)
    abstract def is_assignable_from(env: JNIEnv, sub: JClass, sup: JClass)

    abstract def to_relfected_field(env: JNIEnv, cls: JClass, fieldID: JFieldID, isStatic: JBoolean)

    abstract def throw(env: JNIEnv, obj: JThrowable)
    abstract def throw_new(env: JNIEnv, clazz: JClass, msg: String)
    abstract def exception_occurred(env: JNIEnv)
    abstract def exception_describe(env: JNIEnv)
    abstract def exception_clear(env: JNIEnv)
    abstract def fatal_error(env: JNIEnv, msg: String)

    abstract def push_local_frame(env: JNIEnv, capacity: JInt)
    abstract def pop_local_frame(env: JNIEnv, result: JObject)

    abstract def new_global_ref(env: JNIEnv, lobj: JObject)
    abstract def delete_global_ref(env: JNIEnv, gref: JObject)
    abstract def delete_local_ref(env: JNIEnv, obj: JObject)
    abstract def is_same_object(env: JNIEnv, obj: JObject, obj2: JObject)
    abstract def new_local_ref(env: JNIEnv, ref: JObject)
    abstract def ensure_local_capacity(env: JNIEnv, capacity: JInt)

    abstract def alloc_object(env: JNIEnv, clazz: JClass)
    abstract def new_object(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def new_object_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def get_object_class(env: JNIEnv, obj: JObject)
    abstract def is_instance_of(env: JNIEnv, obj: JObject, clazz: JClass)

    abstract def get_method_id(env: JNIEnv, clazz: JClass, name: String, sig: String)

    abstract def call_object_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_object_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_boolean_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_boolean_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_byte_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_byte_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_char_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_char_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_short_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_short_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_int_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_int_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_long_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_long_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_float_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_float_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_double_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_double_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_void_method(env: JNIEnv, obj: JObject, methodID: JMethodID, *args)
    abstract def call_void_method_a(env: JNIEnv, obj: JObject, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_object_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_object_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_boolean_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_boolean_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_byte_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_byte_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_char_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_char_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_short_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_short_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_int_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_int_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_long_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_long_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_float_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_float_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_double_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_double_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_nonvirtual_void_method(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_nonvirtual_void_method_a(env: JNIEnv, obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def get_field_id(env: JNIEnv, clazz: JClass, name: String, sig: String)

    abstract def get_object_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_boolean_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_char_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_short_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_int_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_long_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_float_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)
    abstract def get_double_field(env: JNIEnv, obj: JObject, fieldID: JFieldID)

    abstract def set_object_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JObject)
    abstract def set_boolean_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JBoolean)
    abstract def set_byte_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JByte)
    abstract def set_char_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JChar)
    abstract def set_short_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JShort)
    abstract def set_int_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JInt)
    abstract def set_long_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JLong)
    abstract def set_float_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JFloat)
    abstract def set_double_field(env: JNIEnv, obj: JObject, fieldID: JFieldID, val: JDouble)

    abstract def get_static_method_id(env: JNIEnv, clazz: JClass, name: String, sig: String)

    abstract def call_static_object_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_object_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_boolean_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_boolean_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_byte_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_byte_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_char_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_char_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_short_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_short_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_int_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_int_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_long_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_long_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_float_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_float_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_double_method(env: JNIEnv, clazz: JClass, methodID: JMethodID, *args)
    abstract def call_static_double_method_a(env: JNIEnv, clazz: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def call_static_void_method(env: JNIEnv, cls: JClass, methodID: JMethodID, *args)
    abstract def call_static_void_method_a(env: JNIEnv, cls: JClass, methodID: JMethodID, args: Array(JValue))

    abstract def get_static_field_id(env: JNIEnv, clazz: JClass, name: String, sig: String)
    abstract def get_static_object_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_boolean_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_byte_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_char_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_short_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_int_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_long_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_float_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)
    abstract def get_static_double_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID)

    abstract def set_static_object_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JObject)
    abstract def set_static_boolean_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JBoolean)
    abstract def set_static_byte_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JByte)
    abstract def set_static_char_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JChar)
    abstract def set_static_short_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JShort)
    abstract def set_static_int_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JInt)
    abstract def set_static_long_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JLong)
    abstract def set_static_float_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JFloat)
    abstract def set_static_double_field(env: JNIEnv, clazz: JClass, fieldID: JFieldID, val: JDouble)

    abstract def new_string(env: JNIEnv, unicode: String, len: JSize)
    abstract def get_string_length(env: JNIEnv, str: JString)
    abstract def get_string_chars(env: JNIEnv, str: JString, isCopy: JBoolean)
    abstract def release_string_chars(env: JNIEnv, str: JString, chars: JString)

    abstract def new_string_utf(env: JNIEnv, utf: String)
    abstract def new_string_utf_length(env: JNIEnv, str: JString)
    abstract def get_string_utf_chars(env: JNIEnv, str: String, isCopy: JBoolean)
    abstract def release_string_utf_chars(env: JNIEnv, str: JString, chars: String)

    abstract def get_array_length(env: JNIEnv, array: JArray)

    abstract def get_object_array(env: JNIEnv, len: JSize, clazz: JClass, init: JObject)
    abstract def get_object_array_element(env: JNIEnv, array: JObjectArray, index: JSize)
    abstract def set_object_array_element(env: JNIEnv, array: JObjectArray, index: JSize, val: JObject)

    abstract def new_boolean_array(env: JNIEnv, len: JSize)
    abstract def new_byte_array(env: JNIEnv, len: JSize)
    abstract def new_char_array(env: JNIEnv, len: JSize)
    abstract def new_short_array(env: JNIEnv, len: JSize)
    abstract def new_int_array(env: JNIEnv, len: JSize)
    abstract def new_long_array(env: JNIEnv, len: JSize)
    abstract def new_float_array(env: JNIEnv, len: JSize)
    abstract def new_double_array(env: JNIEnv, len: JSize)

    abstract def get_boolean_array_elements(env: JNIEnv, array: JBooleanArray, isCopy: JBoolean)
    abstract def get_byte_array_elements(env: JNIEnv, array: JByteArray, isCopy: JBoolean)
    abstract def get_char_array_elements(env: JNIEnv, array: JCharArray, isCopy: JBoolean)
    abstract def get_short_array_elements(env: JNIEnv, array: JShortArray, isCopy: JBoolean)
    abstract def get_int_array_elements(env: JNIEnv, array: JIntArray, isCopy: JBoolean)
    abstract def get_long_array_elements(env: JNIEnv, array: JLongArray, isCopy: JBoolean)
    abstract def get_float_array_elements(env: JNIEnv, array: JFloatArray, isCopy: JBoolean)
    abstract def get_double_array_elements(env: JNIEnv, array: JDoubleArray, isCopy: JBoolean)

    abstract def release_boolean_array_elements(env: JNIEnv, array: JBooleanArray, elems: JBoolean*, mode: JInt)
    abstract def release_byte_array_elements(env: JNIEnv, array: JByteArray, elems: JByte*, mode: JInt)
    abstract def release_char_array_elements(env: JNIEnv, array: JCharArray, elems: JString, mode: JInt)
    abstract def release_short_array_elements(env: JNIEnv, array: JShortArray, elems: JShort*, mode: JInt)
    abstract def release_int_array_elements(env: JNIEnv, array: JIntArray, elems: JInt*, mode: JInt)
    abstract def release_long_array_elements(env: JNIEnv, array: JLongArray, elems: JLong*, mode: JInt)
    abstract def release_float_array_elements(env: JNIEnv, array: JFloatArray, elems: JFloat*, mode: JInt)
    abstract def relase_double_array_elements(env: JNIEnv, array: JDoubleArray, elems: JDouble*, mode: JInt)

    abstract def get_boolean_array_region(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    abstract def get_byte_array_region(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte)
    abstract def get_char_array_region(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar)
    abstract def get_short_array_region(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort)
    abstract def get_int_array_region(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt)
    abstract def get_long_array_region(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong)
    abstract def get_float_array_region(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    abstract def get_double_array_region(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)

    abstract def set_boolean_array_region(env: JNIEnv, array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    abstract def set_byte_array_region(env: JNIEnv, array: JByteArray, start: JSize, len: JSize, buf: JByte)
    abstract def set_char_array_region(env: JNIEnv, array: JCharArray, start: JSize, len: JSize, buf: JChar)
    abstract def set_short_array_region(env: JNIEnv, array: JShortArray, start: JSize, len: JSize, buf: JShort)
    abstract def set_int_array_region(env: JNIEnv, array: JIntArray, start: JSize, len: JSize, buf: JInt)
    abstract def set_long_array_region(env: JNIEnv, array: JLongArray, start: JSize, len: JSize, buf: JLong)
    abstract def set_float_array_region(env: JNIEnv, array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    abstract def set_double_array_region(env: JNIEnv, array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)

    abstract def register_natives(env: JNIEnv, clazz: JClass, methods: JNINativeMethod*, nMethods: JInt)
    abstract def unregister_natives(env: JNIEnv, clazz: JClass)

    abstract def moniter_enter(env: JNIEnv, obj: JObject)
    abstract def moniter_exit(env: JNIEnv, obj: JObject)

    abstract def get_java_vm(env: JNIEnv, vm: JavaVM)

    abstract def get_string_region(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: JChar)
    abstract def get_string_utf_region(env: JNIEnv, str: JString, start: JSize, len: JSize, buf: String)

    abstract def get_primitive_array_critical(env: JNIEnv, array: JArray, isCopy: JBoolean)
    abstract def release_primitive_array_critical(env: JNIEnv, array: JArray, carray: Void, mode: JInt)

    abstract def get_string_critial(env: JNIEnv, str: JString, isCopy: JBoolean)
    abstract def release_string_critical(env: JNIEnv, str: JString, cstring: JString)

    abstract def new_weal_global_ref(env: JNIEnv, obj: JObject)
    abstract def delete_weak_global_ref(env: JNIEnv, ref: JWeak)

    abstract def exception_check(env: JNIEnv)

    abstract def new_direct_byte_buffer(env: JNIEnv, address: Void*, capacity: JLong)
    abstract def get_direct_buffer_address(env: JNIEnv, buf: JObject)
    abstract def get_direct_buffer_capacity(env: JNIEnv, buf: JObject)
    abstract def get_object_ref_type(env: JNIEnv, obj: JObject)
end
