require "./native_interface"

lib JNI
  struct JNIEnv
    functions: JNINativeInterface
  end
end

struct JNI::JNIEnv
  def get_version()
    functions.get_version(self)
  end

  def define_class(name: String, loader: JObject, buf: JByte, len: JSize)
    functions.define_class(self, name, loader, buf, len)
  end
  def find_class(name: String)
    functions.find_class(self, name)
  end

  def from_reflected_method(method: JObject)
    functions.from_reflected_method(self, method)
  end
  def from_reflected_field(field: JObject)
    functions.from_reflected_field(self, field)
  end

  def to_reflected_method(cls: JClass, methodID: JMethodID, isStacic: JBoolean)
    functions.to_reflected_method(self, cls, methodID, isStatic)
  end

  def get_superclass(sub: JClass)
    functions.get_superclass(self, sub)
  end
  def is_assignable_from(sub: JClass, sup: JClass)
    functions.is_assignable_from(self, sub, sup)
  end

  def to_relfected_field(cls: JClass, fieldID: JFieldID, isStatic: JBoolean)
    functions.to_reflected_field(self, cls, fieldID, isStatic)
  end

  def throw(obj: JThrowable)
    functions.throw(self, obj)
  end
  def throw_new(clazz: JClass, msg: String)
    functions.throw_new(self, clazz, msg)
  end
  def exception_occurred()
    functions.exception_occured(self)
  end
  def exception_describe()
    functions.exception_describe(self)
  end
  def exception_clear()
    functions.exception_clear(self)
  end
  def fatal_error(msg: String)
    functions.fatal_error(self, msg)
  end

  def push_local_frame(capacity: JInt)
    functions.push_local_frame(self, capacity)
  end
  def pop_local_frame(result: JObject)
    functions.pop_local_frame(self, result)
  end

  def new_global_ref(lobj: JObject)
    functions.new_global_ref(self, lobj)
  end
  def delete_global_ref(gref: JObject)
    functions.delete_global_ref(self, gref)
  end
  def delete_local_ref(obj: JObject)
    functions.delete_local_ref(self, obj)
  end
  def is_same_object(obj: JObject, obj2: JObject)
    functions.is_same_object(self, obj, obj2)
  end
  def new_local_ref(ref: JObject)
    functions.new_local_ref(self, ref)
  end
  def ensure_local_capacity(capacity: JInt)
    functions.ensure_local_capacity(self, capacity)
  end

  def alloc_object(clazz: JClass)
    functions.alloc_object(self, clazz)
  end
  def new_object(clazz: JClass, methodID: JMethodID, *args)
    functions.new_object(self, clazz, methodID, args)
  end
  def new_object_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.new_object_a(self, clazz, methodID, args)
  end

  def get_object_class(obj: JObject)
    functions.get_object_class(self, obj)
  end
  def is_instance_of(obj: JObject, clazz: JClass)
    functions.is_instance_of(self, obj, clazz)
  end

  def get_method_id(clazz: JClass, name: String, sig: String)
    functions.get_method_id(self, clazz, name, sig)
  end

  def call_object_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_object_method(self, obj, methodID, args)
  end
  def call_object_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_object_method_a(self, obj, methodID, args)
  end

  def call_boolean_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_boolean_metho(self, obj, methodID, args)
  end
  def call_boolean_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_boolean_method_a(self, obj, methodID, args)
  end

  def call_byte_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_byte_method(self, obj, methodID, args)
  end
  def call_byte_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_byte_method_a(self, obj, methodID, args)
  end

  def call_char_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_char_method(self, obj, methodID, args)
  end
  def call_char_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_short_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_short_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_int_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_int_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_long_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_long_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_float_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_float_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_double_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_double_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_void_method(obj: JObject, methodID: JMethodID, *args)
  end
  def call_void_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_object_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_object_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_boolean_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_boolean_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_byte_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_byte_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_char_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_char_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_short_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_short_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_int_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_int_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_long_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_long_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_float_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_float_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_double_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_double_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_nonvirtual_void_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
  end
  def call_nonvirtual_void_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def get_field_id(clazz: JClass, name: String, sig: String)
  end

  def get_object_field(obj: JObject, fieldID: JFieldID)
  end
  def get_boolean_field(obj: JObject, fieldID: JFieldID)
  end
  def get_char_field(obj: JObject, fieldID: JFieldID)
  end
  def get_short_field(obj: JObject, fieldID: JFieldID)
  end
  def get_int_field(obj: JObject, fieldID: JFieldID)
  end
  def get_long_field(obj: JObject, fieldID: JFieldID)
  end
  def get_float_field(obj: JObject, fieldID: JFieldID)
  end
  def get_double_field(obj: JObject, fieldID: JFieldID)
  end

  def set_object_field(obj: JObject, fieldID: JFieldID, val: JObject)
  end
  def set_boolean_field(obj: JObject, fieldID: JFieldID, val: JBoolean)
  end
  def set_byte_field(obj: JObject, fieldID: JFieldID, val: JByte)
  end
  def set_char_field(obj: JObject, fieldID: JFieldID, val: JChar)
  end
  def set_short_field(obj: JObject, fieldID: JFieldID, val: JShort)
  end
  def set_int_field(obj: JObject, fieldID: JFieldID, val: JInt)
  end
  def set_long_field(obj: JObject, fieldID: JFieldID, val: JLong)
  end
  def set_float_field(obj: JObject, fieldID: JFieldID, val: JFloat)
  end
  def set_double_field(obj: JObject, fieldID: JFieldID, val: JDouble)
  end

  def get_static_method_id(clazz: JClass, name: String, sig: String)
  end

  def call_static_object_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_object_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_boolean_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_boolean_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_byte_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_byte_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_char_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_char_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_short_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_short_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_int_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_int_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_long_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_long_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_float_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_float_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_double_method(clazz: JClass, methodID: JMethodID, *args)
  end
  def call_static_double_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def call_static_void_method(cls: JClass, methodID: JMethodID, *args)
  end
  def call_static_void_method_a(cls: JClass, methodID: JMethodID, args: Array(JValue))
  end

  def get_static_field_id(clazz: JClass, name: String, sig: String)
  end
  def get_static_object_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_boolean_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_byte_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_char_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_short_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_int_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_long_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_float_field(clazz: JClass, fieldID: JFieldID)
  end
  def get_static_double_field(clazz: JClass, fieldID: JFieldID)
  end

  def set_static_object_field(clazz: JClass, fieldID: JFieldID, val: JObject)
  end
  def set_static_boolean_field(clazz: JClass, fieldID: JFieldID, val: JBoolean)
  end
  def set_static_byte_field(clazz: JClass, fieldID: JFieldID, val: JByte)
  end
  def set_static_char_field(clazz: JClass, fieldID: JFieldID, val: JChar)
  end
  def set_static_short_field(clazz: JClass, fieldID: JFieldID, val: JShort)
  end
  def set_static_int_field(clazz: JClass, fieldID: JFieldID, val: JInt)
  end
  def set_static_long_field(clazz: JClass, fieldID: JFieldID, val: JLong)
  end
  def set_static_float_field(clazz: JClass, fieldID: JFieldID, val: JFloat)
  end
  def set_static_double_field(clazz: JClass, fieldID: JFieldID, val: JDouble)
  end

  def new_string(unicode: String, len: JSize)
  end
  def get_string_length(str: JString)
  end
  def get_string_chars(str: JString, isCopy: JBoolean)
  end
  def release_string_chars(str: JString, chars: JString)
  end

  def new_string_utf(utf: String)
  end
  def new_string_utf_length(str: JString)
  end
  def get_string_utf_chars(str: String, isCopy: JBoolean)
  end
  def release_string_utf_chars(str: JString, chars: String)
  end

  def get_array_length(array: JArray)
  end

  def get_object_array(len: JSize, clazz: JClass, init: JObject)
  end
  def get_object_array_element(array: JObjectArray, index: JSize)
  end
  def set_object_array_element(array: JObjectArray, index: JSize, val: JObject)
  end

  def new_boolean_array(len: JSize)
  end
  def new_byte_array(len: JSize)
  end
  def new_char_array(len: JSize)
  end
  def new_short_array(len: JSize)
  end
  def new_int_array(len: JSize)
  end
  def new_long_array(len: JSize)
  end
  def new_float_array(len: JSize)
  end
  def new_double_array(len: JSize)
  end

  def get_boolean_array_elements(array: JBooleanArray, isCopy: JBoolean)
  end
  def get_byte_array_elements(array: JByteArray, isCopy: JBoolean)
  end
  def get_char_array_elements(array: JCharArray, isCopy: JBoolean)
  end
  def get_short_array_elements(array: JShortArray, isCopy: JBoolean)
  end
  def get_int_array_elements(array: JIntArray, isCopy: JBoolean)
  end
  def get_long_array_elements(array: JLongArray, isCopy: JBoolean)
  end
  def get_float_array_elements(array: JFloatArray, isCopy: JBoolean)
  end
  def get_double_array_elements(array: JDoubleArray, isCopy: JBoolean)
  end

  def release_boolean_array_elements(array: JBooleanArray, elems: JBoolean*, mode: JInt)
  end
  def release_byte_array_elements(array: JByteArray, elems: JByte*, mode: JInt)
  end
  def release_char_array_elements(array: JCharArray, elems: JString, mode: JInt)
  end
  def release_short_array_elements(array: JShortArray, elems: JShort*, mode: JInt)
  end
  def release_int_array_elements(array: JIntArray, elems: JInt*, mode: JInt)
  end
  def release_long_array_elements(array: JLongArray, elems: JLong*, mode: JInt)
  end
  def release_float_array_elements(array: JFloatArray, elems: JFloat*, mode: JInt)
  end
  def relase_double_array_elements(array: JDoubleArray, elems: JDouble*, mode: JInt)
  end

  def get_boolean_array_region(array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
  end
  def get_byte_array_region(array: JByteArray, start: JSize, len: JSize, buf: JByte)
  end
  def get_char_array_region(array: JCharArray, start: JSize, len: JSize, buf: JChar)
  end
  def get_short_array_region(array: JShortArray, start: JSize, len: JSize, buf: JShort)
  end
  def get_int_array_region(array: JIntArray, start: JSize, len: JSize, buf: JInt)
  end
  def get_long_array_region(array: JLongArray, start: JSize, len: JSize, buf: JLong)
  end
  def get_float_array_region(array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
  end
  def get_double_array_region(array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
  end

  def set_boolean_array_region(array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
  end
  def set_byte_array_region(array: JByteArray, start: JSize, len: JSize, buf: JByte)
  end
  def set_char_array_region(array: JCharArray, start: JSize, len: JSize, buf: JChar)
  end
  def set_short_array_region(array: JShortArray, start: JSize, len: JSize, buf: JShort)
  end
  def set_int_array_region(array: JIntArray, start: JSize, len: JSize, buf: JInt)
  end
  def set_long_array_region(array: JLongArray, start: JSize, len: JSize, buf: JLong)
  end
  def set_float_array_region(array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
  end
  def set_double_array_region(array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
  end

  def register_natives(clazz: JClass, methods: JNINativeMethod*, nMethods: JInt)
  end
  def unregister_natives(clazz: JClass)
  end

  def moniter_enter(obj: JObject)
  end
  def moniter_exit(obj: JObject)
  end

  def get_java_vm(vm: JavaVM)
  end

  def get_string_region(str: JString, start: JSize, len: JSize, buf: JChar)
  end
  def get_string_utf_region(str: JString, start: JSize, len: JSize, buf: String)
  end

  def get_primitive_array_critical(array: JArray, isCopy: JBoolean)
  end
  def release_primitive_array_critical(array: JArray, carray: Void, mode: JInt)
  end

  def get_string_critial(str: JString, isCopy: JBoolean)
  end
  def release_string_critical(str: JString, cstring: JString)
  end

  def new_weal_global_ref(obj: JObject)
  end
  def delete_weak_global_ref(ref: JWeak)
  end

  def exception_check()
  end

  def new_direct_byte_buffer(address: Void*, capacity: JLong)
  end
  def get_direct_buffer_address(buf: JObject)
  end
  def get_direct_buffer_capacity(buf: JObject)
  end

  def get_object_ref_type(obj: JObject)
  end
end
