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
    functions.call_char_method_a(self, obj, methodID, args)
  end

  def call_short_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_short_method(self, obj, methodID, args)
  end
  def call_short_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_short_method_a(self, obj, methodID, args)
  end

  def call_int_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_int_method(self, obj, methodID, args)
  end
  def call_int_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.cal_int_method_a(self, obj, methodID, args)
  end

  def call_long_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_long_method(self, obj, methodID, args)
  end
  def call_long_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_long_method_a(self, obj, methodID, args)
  end

  def call_float_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_float_method(self, obj, methodID, args)
  end
  def call_float_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_float_method_a(self, obj, methodID, args)
  end

  def call_double_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_double_method(self, obj, methodID, args)
  end
  def call_double_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_double_method_a(self, obj, methodID, args)
  end

  def call_void_method(obj: JObject, methodID: JMethodID, *args)
    functions.call_void_method(self, obj, methodID args)
  end
  def call_void_method_a(obj: JObject, methodID: JMethodID, args: Array(JValue))
    functions.call_void_method_a(self, obj, methodID, args)
  end

  def call_nonvirtual_object_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_obj_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_object_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_object_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_boolean_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_boolean_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_boolean_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    funcitons.call_nonvirutal_boolean_method_a(obj, calzz, methodID, args)
  end

  def call_nonvirtual_byte_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_byte_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_byte_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_byte_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_char_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_char_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_char_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_char_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_short_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_short_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_short_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_short_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_int_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_int_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_int_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_int_method_a(self, obj, clazz, methoID, args)
  end

  def call_nonvirtual_long_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_long_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_long_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    funcitons.call_nonvirtual_long_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_float_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_float_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_float_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_nonvirtual_float_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_double_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_double_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_double_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functons.call_nonvirtual_double_method_a(self, obj, clazz, methodID, args)
  end

  def call_nonvirtual_void_method(obj: JObject, clazz: JClass, methodID: JMethodID, *args)
    functions.call_nonvirtual_void_method(self, obj, clazz, methodID, args)
  end
  def call_nonvirtual_void_method_a(obj: JObject, clazz: JClass, methodID: JMethodID, args: Array(JValue))
    funcitons.call_nonvirtual_void_method_a(self, obj, clazz, methodID, args)
  end

  def get_field_id(clazz: JClass, name: String, sig: String)
    functions.get_field_id(self, clazz, name, sig)
  end

  def get_object_field(obj: JObject, fieldID: JFieldID)
    functions.get_object_field(self, obj, fieldID)
  end
  def get_boolean_field(obj: JObject, fieldID: JFieldID)
    functions.get_boolean_field(self, obj, fieldID)
  end
  def get_char_field(obj: JObject, fieldID: JFieldID)
    functions.get_char_field(self, obj, fieldID)
  end
  def get_short_field(obj: JObject, fieldID: JFieldID)
    functions.get_short_field(self, obj, fieldID)
  end
  def get_int_field(obj: JObject, fieldID: JFieldID)
    functions.get_int_field(self, obj, fieldID)
  end
  def get_long_field(obj: JObject, fieldID: JFieldID)
    functions.get_long_field(self, obj, fieldID)
  end
  def get_float_field(obj: JObject, fieldID: JFieldID)
    functions.get_float_field(self, obj, fieldID)
  end
  def get_double_field(obj: JObject, fieldID: JFieldID)
    functions.get_double_field(self, obj, fieldID)
  end

  def set_object_field(obj: JObject, fieldID: JFieldID, val: JObject)
    functions.set_object_field(self, obj, fieldID, val)
  end
  def set_boolean_field(obj: JObject, fieldID: JFieldID, val: JBoolean)
    functions.set_boolean_field(self, obj, fieldID, val)
  end
  def set_byte_field(obj: JObject, fieldID: JFieldID, val: JByte)
    functions.set_byte_field(self, obj, fieldID, val)
  end
  def set_char_field(obj: JObject, fieldID: JFieldID, val: JChar)
    functions.set_char_field(self, obj, fieldID, val)
  end
  def set_short_field(obj: JObject, fieldID: JFieldID, val: JShort)
    functions.set_short_field(self, obj, fieldID, val)
  end
  def set_int_field(obj: JObject, fieldID: JFieldID, val: JInt)
    functions.set_int_field(self, obj, fieldID, val)
  end
  def set_long_field(obj: JObject, fieldID: JFieldID, val: JLong)
    functions.set_long_field(self, obj, fieldID, val)
  end
  def set_float_field(obj: JObject, fieldID: JFieldID, val: JFloat)
    functions.set_float_field(self, obj, fieldID, val)
  end
  def set_double_field(obj: JObject, fieldID: JFieldID, val: JDouble)
    functions.set_double_field(self, obj, fieldID, val)
  end

  def get_static_method_id(clazz: JClass, name: String, sig: String)
    functions.get_static_method_id(self, clazz, name, sig)
  end

  def call_static_object_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_object_method(self, clazz, methodID, args)
  end
  def call_static_object_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_object_method_a(self, clazz, methodID, args)
  end

  def call_static_boolean_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_boolean_method(self, clazz, methodID, args)
  end
  def call_static_boolean_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    funcitons.call_static_boolean_method_a(self, clazz, methodID, args)
  end

  def call_static_byte_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_byte_method(self, clazz, methodID, args)
  end
  def call_static_byte_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_byte_method_a(self, clazz, methodID, args)
  end

  def call_static_char_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_char_char(self, clazz, methodID, args)
  end
  def call_static_char_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    funcitons.call_static_char_method_a(self, clazz, methodID, args)
  end

  def call_static_short_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_short_method(self, clazz, methodID, args)
  end
  def call_static_short_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_short_method_a(self, clazz, methodID, args)
  end

  def call_static_int_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_int_method(self, clazz, methodID, args)
  end
  def call_static_int_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_int_method_a(self, clazz, methodID, args)
  end

  def call_static_long_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_long_method(self, clazz, methodID, args)
  end
  def call_static_long_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_long_method_a(self, clazz, methodID, args)
  end

  def call_static_float_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_float_method(self, clazz, methodID, args)
  end
  def call_static_float_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_float_method_a(self, clazz, methodID, args)
  end

  def call_static_double_method(clazz: JClass, methodID: JMethodID, *args)
    functions.call_static_double_method(selfm clazz, methodID, args)
  end
  def call_static_double_method_a(clazz: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_double_method_a(self, clazz, methodID, args)
  end

  def call_static_void_method(cls: JClass, methodID: JMethodID, *args)
    functions.call_static_void_method(self, cls, methodID, args)
  end
  def call_static_void_method_a(cls: JClass, methodID: JMethodID, args: Array(JValue))
    functions.call_static_void_method_a(self, cls, methodID, args)
  end

  def get_static_field_id(clazz: JClass, name: String, sig: String)
    functions.get_static_field_id(self, clazz, fieldID)
  end
  def get_static_object_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_object_field(self, clazz, fieldID)
  end
  def get_static_boolean_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_boolean_field(self, clazz, fieldID)
  end
  def get_static_byte_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_byte_field(self, clazz, fieldID)
  end
  def get_static_char_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_char_field(self, clazz, fieldID)
  end
  def get_static_short_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_short_field(self, clazz, fieldID)
  end
  def get_static_int_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_int_field(self, clazz, fieldID)
  end
  def get_static_long_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_long_field(self, clazz, fieldID)
  end
  def get_static_float_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_float_field(self, clazz, fieldID)
  end
  def get_static_double_field(clazz: JClass, fieldID: JFieldID)
    functions.get_static_double_field(self, clazz, fieldID)
  end

  def set_static_object_field(clazz: JClass, fieldID: JFieldID, val: JObject)
    functions.set_static_object_field(self, clazz, fieldID, val)
  end
  def set_static_boolean_field(clazz: JClass, fieldID: JFieldID, val: JBoolean)
    functions.set_static_boolean_field(self, clazz, fieldID, val)
  end
  def set_static_byte_field(clazz: JClass, fieldID: JFieldID, val: JByte)
    functions.set_static_byte_field(self, clazz, fieldID, val)
  end
  def set_static_char_field(clazz: JClass, fieldID: JFieldID, val: JChar)
    functions.set_static_char_field(self, clazz, fieldID, val)
  end
  def set_static_short_field(clazz: JClass, fieldID: JFieldID, val: JShort)
    functions.set_static_short_field(self, clazz, fieldID, val)
  end
  def set_static_int_field(clazz: JClass, fieldID: JFieldID, val: JInt)
    functions.set_static_int_field(self, clazz, fieldID, val)
  end
  def set_static_long_field(clazz: JClass, fieldID: JFieldID, val: JLong)
    functions.set_static_long_field(self, clazz, fieldID, val)
  end
  def set_static_float_field(clazz: JClass, fieldID: JFieldID, val: JFloat)
    functions.set_static_float_field(self, clazz, fieldID, val)
  end
  def set_static_double_field(clazz: JClass, fieldID: JFieldID, val: JDouble)
    functions.set_static_double_field(self, clazz, fieldID, val)
  end

  def new_string(unicode: String, len: JSize)
    functions.new_string(self, unicode, len)
  end
  def get_string_length(str: JString)
    functions.get_string_length(self, str)
  end
  def get_string_chars(str: JString, isCopy: JBoolean)
    functions.get_string_chars(self, str, isCopy)
  end
  def release_string_chars(str: JString, chars: JString)
    functions.release_string_chars(self, str, chars)
  end

  def new_string_utf(utf: String)
    functions.new_string_utf(self, utf)
  end
  def new_string_utf_length(str: JString)
    functions.new_string_utf_length(self, str)
  end
  def get_string_utf_chars(str: String, isCopy: JBoolean)
    functions.get_string_utf_chars(self, str, isCopy)
  end
  def release_string_utf_chars(str: JString, chars: String)
    functions.release_string_utf_chars(self, str, chars)
  end

  def get_array_length(array: JArray)
    functions.get_array_length(self, array)
  end

  def get_object_array(len: JSize, clazz: JClass, init: JObject)
    functions.get_object_array(self, len, clazz, init)
  end
  def get_object_array_element(array: JObjectArray, index: JSize)
    functions.get_object_array_element(self, array, index)
  end
  def set_object_array_element(array: JObjectArray, index: JSize, val: JObject)
    functions.set_object_array_element(self, array, index, val)
  end

  def new_boolean_array(len: JSize)
    functions.new_boolean_array(self, len)
  end
  def new_byte_array(len: JSize)
    functions.new_byte_array(self, len)
  end
  def new_char_array(len: JSize)
    functions.new_char_array(self, len)
  end
  def new_short_array(len: JSize)
    functions.new_short_array(self, len)
  end
  def new_int_array(len: JSize)
    functions.new_int_array(self, len)
  end
  def new_long_array(len: JSize)
    functions.new_long_array(self, len)
  end
  def new_float_array(len: JSize)
    functions.new_float_array(self, len)
  end
  def new_double_array(len: JSize)
    functions.new_double_array(self, len)
  end

  def get_boolean_array_elements(array: JBooleanArray, isCopy: JBoolean)
    functions.get_boolean_array_elements(self, array, isCopy)
  end
  def get_byte_array_elements(array: JByteArray, isCopy: JBoolean)
    functions.get_byte_array_elements(self, array, isCopy)
  end
  def get_char_array_elements(array: JCharArray, isCopy: JBoolean)
    functions.get_char_array_elements(self, array, isCopy)
  end
  def get_short_array_elements(array: JShortArray, isCopy: JBoolean)
    functions.get_short_array_elements(self, array, isCopy)
  end
  def get_int_array_elements(array: JIntArray, isCopy: JBoolean)
    functions.get_int_array_elements(self, array, isCopy)
  end
  def get_long_array_elements(array: JLongArray, isCopy: JBoolean)
    functions.get_long_array_elements(self, array, isCopy)
  end
  def get_float_array_elements(array: JFloatArray, isCopy: JBoolean)
    functions.get_float_array_elements(self, array, isCopy)
  end
  def get_double_array_elements(array: JDoubleArray, isCopy: JBoolean)
    functions.get_double_array_elements(self, array, isCopy)
  end

  def release_boolean_array_elements(array: JBooleanArray, elems: JBoolean*, mode: JInt)
    functions.release_boolean_array_elements(self, array, elems, mode)
  end
  def release_byte_array_elements(array: JByteArray, elems: JByte*, mode: JInt)
    functions.release_byte_array_elements(self, array, elems, mode)
  end
  def release_char_array_elements(array: JCharArray, elems: JChar*, mode: JInt)
    functions.release_char_array_elements(self, array, elems, mode)
  end
  def release_short_array_elements(array: JShortArray, elems: JShort*, mode: JInt)
    functions.release_short_array_elements(self, array, elems, mode)
  end
  def release_int_array_elements(array: JIntArray, elems: JInt*, mode: JInt)
    functions.release_int_array_elements(self, array, elems, mode)
  end
  def release_long_array_elements(array: JLongArray, elems: JLong*, mode: JInt)
    functions.release_long_array_elements(self, array, elems, mode)
  end
  def release_float_array_elements(array: JFloatArray, elems: JFloat*, mode: JInt)
    functions.release_float_array_elements(self, array, elemes, mode)
  end
  def release_double_array_elements(array: JDoubleArray, elems: JDouble*, mode: JInt)
    functions.release_double_array_elements(self, array, elems, mode)
  end

  def get_boolean_array_region(array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    functions.get_boolean_array_region(self, array, start, len, buf)
  end
  def get_byte_array_region(array: JByteArray, start: JSize, len: JSize, buf: JByte)
    functions.get_byte_array_region(self, array, start, len, buf)
  end
  def get_char_array_region(array: JCharArray, start: JSize, len: JSize, buf: JChar)
    functions.get_short_array_region(self, array, start, len, buf)
  end
  def get_short_array_region(array: JShortArray, start: JSize, len: JSize, buf: JShort)
    functions.get_short_array_region(self, array, start, len, buf)
  end
  def get_int_array_region(array: JIntArray, start: JSize, len: JSize, buf: JInt)
    functions.get_int_array_region(self, array, start, len, buf)
  end
  def get_long_array_region(array: JLongArray, start: JSize, len: JSize, buf: JLong)
    functions.get_long_array_region(self, array, start, len, buf)
  end
  def get_float_array_region(array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    functions.get_float_array_region(self, array, start, len, buf)
  end
  def get_double_array_region(array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
    functions.get_double_array_region(self, array, start, len, buf)
  end

  def set_boolean_array_region(array: JBooleanArray, start: JSize, l: JSize, buf: JBoolean)
    functions.set_boolean_array_region(self, array, start, len, buf)
  end
  def set_byte_array_region(array: JByteArray, start: JSize, len: JSize, buf: JByte)
    functions.set_byte_array_region(self, array, start, len, buf)
  end
  def set_char_array_region(array: JCharArray, start: JSize, len: JSize, buf: JChar)
    functions.set_char_array_region(self, array, start, len, buf)
  end
  def set_short_array_region(array: JShortArray, start: JSize, len: JSize, buf: JShort)
    functions.set_short_array_region(self, array, start, len, buf)
  end
  def set_int_array_region(array: JIntArray, start: JSize, len: JSize, buf: JInt)
    functions.set_int_array_region(self, array, start, len, buf)
  end
  def set_long_array_region(array: JLongArray, start: JSize, len: JSize, buf: JLong)
    functions.set_long_array_region(self, array, start, len, buf)
  end
  def set_float_array_region(array: JFloatArray, start: JSize, len: JSize, buf: JFloat)
    functions.set_float_array_region(self, array, start, len, jsize, buf)
  end
  def set_double_array_region(array: JDoubleArray, start: JSize, len: JSize, buf: JDouble)
    functions.set_double_array_region(self, array, start, len, buf)
  end

  def register_natives(clazz: JClass, methods: JNINativeMethod*, nMethods: JInt)
    functions.register_natives(self, clazz, methods, nMethods)
  end
  def unregister_natives(clazz: JClass)
    functions.unregister_natives(self, clazz)
  end

  def monitor_enter(obj: JObject)
    functions.monitor_enter(self, obj)
  end
  def monitor_exit(obj: JObject)
    functions.monitor_exit(self, obj)
  end

  def get_java_vm(vm: JavaVM)
    functions.get_java_vm(self, vm)
  end

  def get_string_region(str: JString, start: JSize, len: JSize, buf: JChar)
    functions.get_string_region(self, str, start, len, buf)
  end
  def get_string_utf_region(str: JString, start: JSize, len: JSize, buf: String)
    functions.get_string_utf_region(self, str, start, len, buf)
  end

  def get_primitive_array_critical(array: JArray, isCopy: JBoolean)
    functions.get_primitive_array_critical(self, array, isCopy)
  end
  def release_primitive_array_critical(array: JArray, carray: Void, mode: JInt)
    functions.release_primitive_array_critical(self, array, carray, mode)
  end

  def get_string_critial(str: JString, isCopy: JBoolean)
    functions.get_string_critical(self, str, isCopy)
  end
  def release_string_critical(str: JString, cstring: JString)
    functions.release_string_critical(self, str, cstring)
  end

  def new_weal_global_ref(obj: JObject)
    functions.new_weak_global_ref(self, obj)
  end
  def delete_weak_global_ref(ref: JWeak)
    funcitons.delete_weak_global_ref(self, ref)
  end

  def exception_check()
    functions.exception_check(self)
  end

  def new_direct_byte_buffer(address: Void*, capacity: JLong)
    functions.get_direct_byte_buffer(self, address, capacity)
  end
  def get_direct_buffer_address(buf: JObject)
    functions.get_direct_buffer_address(self, bug)
  end
  def get_direct_buffer_capacity(buf: JObject)
    functions.get_direct_buffer_capacity(self, buf)
  end

  def get_object_ref_type(obj: JObject)
    functions.get_object_ref_type(self, obj)
  end
end
