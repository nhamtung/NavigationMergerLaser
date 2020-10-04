# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sick_safetyscanners/OutputPathsMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OutputPathsMsg(genpy.Message):
  _md5sum = "10ce675a2a87077eb6fb8c168c348972"
  _type = "sick_safetyscanners/OutputPathsMsg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool[] status
bool[] is_safe
bool[] is_valid
int32 active_monitoring_case
"""
  __slots__ = ['status','is_safe','is_valid','active_monitoring_case']
  _slot_types = ['bool[]','bool[]','bool[]','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status,is_safe,is_valid,active_monitoring_case

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OutputPathsMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.status is None:
        self.status = []
      if self.is_safe is None:
        self.is_safe = []
      if self.is_valid is None:
        self.is_valid = []
      if self.active_monitoring_case is None:
        self.active_monitoring_case = 0
    else:
      self.status = []
      self.is_safe = []
      self.is_valid = []
      self.active_monitoring_case = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.status)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.status))
      length = len(self.is_safe)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.is_safe))
      length = len(self.is_valid)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.is_valid))
      _x = self.active_monitoring_case
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.status = s.unpack(str[start:end])
      self.status = list(map(bool, self.status))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.is_safe = s.unpack(str[start:end])
      self.is_safe = list(map(bool, self.is_safe))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.is_valid = s.unpack(str[start:end])
      self.is_valid = list(map(bool, self.is_valid))
      start = end
      end += 4
      (self.active_monitoring_case,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.status)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.status.tostring())
      length = len(self.is_safe)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.is_safe.tostring())
      length = len(self.is_valid)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.is_valid.tostring())
      _x = self.active_monitoring_case
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.status = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.status = list(map(bool, self.status))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.is_safe = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.is_safe = list(map(bool, self.is_safe))
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.is_valid = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.is_valid = list(map(bool, self.is_valid))
      start = end
      end += 4
      (self.active_monitoring_case,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
