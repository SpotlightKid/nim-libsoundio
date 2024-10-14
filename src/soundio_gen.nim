
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_SoundIoError_1677722046* {.size: sizeof(cuint).} = enum
    SoundIoErrorNone = 0, SoundIoErrorNoMem = 1,
    SoundIoErrorInitAudioBackend = 2, SoundIoErrorSystemResources = 3,
    SoundIoErrorOpeningDevice = 4, SoundIoErrorNoSuchDevice = 5,
    SoundIoErrorInvalid = 6, SoundIoErrorBackendUnavailable = 7,
    SoundIoErrorStreaming = 8, SoundIoErrorIncompatibleDevice = 9,
    SoundIoErrorNoSuchClient = 10, SoundIoErrorIncompatibleBackend = 11,
    SoundIoErrorBackendDisconnected = 12, SoundIoErrorInterrupted = 13,
    SoundIoErrorUnderflow = 14, SoundIoErrorEncodingString = 15
type
  enum_SoundIoChannelId_1677722048* {.size: sizeof(cuint).} = enum
    SoundIoChannelIdInvalid = 0, SoundIoChannelIdFrontLeft = 1,
    SoundIoChannelIdFrontRight = 2, SoundIoChannelIdFrontCenter = 3,
    SoundIoChannelIdLfe = 4, SoundIoChannelIdBackLeft = 5,
    SoundIoChannelIdBackRight = 6, SoundIoChannelIdFrontLeftCenter = 7,
    SoundIoChannelIdFrontRightCenter = 8, SoundIoChannelIdBackCenter = 9,
    SoundIoChannelIdSideLeft = 10, SoundIoChannelIdSideRight = 11,
    SoundIoChannelIdTopCenter = 12, SoundIoChannelIdTopFrontLeft = 13,
    SoundIoChannelIdTopFrontCenter = 14, SoundIoChannelIdTopFrontRight = 15,
    SoundIoChannelIdTopBackLeft = 16, SoundIoChannelIdTopBackCenter = 17,
    SoundIoChannelIdTopBackRight = 18, SoundIoChannelIdBackLeftCenter = 19,
    SoundIoChannelIdBackRightCenter = 20, SoundIoChannelIdFrontLeftWide = 21,
    SoundIoChannelIdFrontRightWide = 22, SoundIoChannelIdFrontLeftHigh = 23,
    SoundIoChannelIdFrontCenterHigh = 24, SoundIoChannelIdFrontRightHigh = 25,
    SoundIoChannelIdTopFrontLeftCenter = 26,
    SoundIoChannelIdTopFrontRightCenter = 27, SoundIoChannelIdTopSideLeft = 28,
    SoundIoChannelIdTopSideRight = 29, SoundIoChannelIdLeftLfe = 30,
    SoundIoChannelIdRightLfe = 31, SoundIoChannelIdLfe2 = 32,
    SoundIoChannelIdBottomCenter = 33, SoundIoChannelIdBottomLeftCenter = 34,
    SoundIoChannelIdBottomRightCenter = 35, SoundIoChannelIdMsMid = 36,
    SoundIoChannelIdMsSide = 37, SoundIoChannelIdAmbisonicW = 38,
    SoundIoChannelIdAmbisonicX = 39, SoundIoChannelIdAmbisonicY = 40,
    SoundIoChannelIdAmbisonicZ = 41, SoundIoChannelIdXyX = 42,
    SoundIoChannelIdXyY = 43, SoundIoChannelIdHeadphonesLeft = 44,
    SoundIoChannelIdHeadphonesRight = 45, SoundIoChannelIdClickTrack = 46,
    SoundIoChannelIdForeignLanguage = 47, SoundIoChannelIdHearingImpaired = 48,
    SoundIoChannelIdNarration = 49, SoundIoChannelIdHaptic = 50,
    SoundIoChannelIdDialogCentricMix = 51, SoundIoChannelIdAux = 52,
    SoundIoChannelIdAux0 = 53, SoundIoChannelIdAux1 = 54,
    SoundIoChannelIdAux2 = 55, SoundIoChannelIdAux3 = 56,
    SoundIoChannelIdAux4 = 57, SoundIoChannelIdAux5 = 58,
    SoundIoChannelIdAux6 = 59, SoundIoChannelIdAux7 = 60,
    SoundIoChannelIdAux8 = 61, SoundIoChannelIdAux9 = 62,
    SoundIoChannelIdAux10 = 63, SoundIoChannelIdAux11 = 64,
    SoundIoChannelIdAux12 = 65, SoundIoChannelIdAux13 = 66,
    SoundIoChannelIdAux14 = 67, SoundIoChannelIdAux15 = 68
type
  enum_SoundIoChannelLayoutId_1677722050* {.size: sizeof(cuint).} = enum
    SoundIoChannelLayoutIdMono = 0, SoundIoChannelLayoutIdStereo = 1,
    SoundIoChannelLayoutId2Point1 = 2, SoundIoChannelLayoutId3Point0 = 3,
    SoundIoChannelLayoutId3Point0Back = 4, SoundIoChannelLayoutId3Point1 = 5,
    SoundIoChannelLayoutId4Point0 = 6, SoundIoChannelLayoutIdQuad = 7,
    SoundIoChannelLayoutIdQuadSide = 8, SoundIoChannelLayoutId4Point1 = 9,
    SoundIoChannelLayoutId5Point0Back = 10,
    SoundIoChannelLayoutId5Point0Side = 11, SoundIoChannelLayoutId5Point1 = 12,
    SoundIoChannelLayoutId5Point1Back = 13,
    SoundIoChannelLayoutId6Point0Side = 14,
    SoundIoChannelLayoutId6Point0Front = 15,
    SoundIoChannelLayoutIdHexagonal = 16, SoundIoChannelLayoutId6Point1 = 17,
    SoundIoChannelLayoutId6Point1Back = 18,
    SoundIoChannelLayoutId6Point1Front = 19, SoundIoChannelLayoutId7Point0 = 20,
    SoundIoChannelLayoutId7Point0Front = 21, SoundIoChannelLayoutId7Point1 = 22,
    SoundIoChannelLayoutId7Point1Wide = 23,
    SoundIoChannelLayoutId7Point1WideBack = 24,
    SoundIoChannelLayoutIdOctagonal = 25
type
  enum_SoundIoBackend_1677722052* {.size: sizeof(cuint).} = enum
    SoundIoBackendNone = 0, SoundIoBackendJack = 1,
    SoundIoBackendPulseAudio = 2, SoundIoBackendAlsa = 3,
    SoundIoBackendCoreAudio = 4, SoundIoBackendWasapi = 5,
    SoundIoBackendDummy = 6
type
  enum_SoundIoDeviceAim_1677722054* {.size: sizeof(cuint).} = enum
    SoundIoDeviceAimInput = 0, SoundIoDeviceAimOutput = 1
type
  enum_SoundIoFormat_1677722056* {.size: sizeof(cuint).} = enum
    SoundIoFormatInvalid = 0, SoundIoFormatS8 = 1, SoundIoFormatU8 = 2,
    SoundIoFormatS16LE = 3, SoundIoFormatS16BE = 4, SoundIoFormatU16LE = 5,
    SoundIoFormatU16BE = 6, SoundIoFormatS24LE = 7, SoundIoFormatS24BE = 8,
    SoundIoFormatU24LE = 9, SoundIoFormatU24BE = 10, SoundIoFormatS32LE = 11,
    SoundIoFormatS32BE = 12, SoundIoFormatU32LE = 13, SoundIoFormatU32BE = 14,
    SoundIoFormatFloat32LE = 15, SoundIoFormatFloat32BE = 16,
    SoundIoFormatFloat64LE = 17, SoundIoFormatFloat64BE = 18
when not declared(struct_SoundIoRingBuffer):
  type
    struct_SoundIoRingBuffer* = object
else:
  static :
    hint("Declaration of " & "struct_SoundIoRingBuffer" &
        " already exists, not redeclaring")
type
  struct_SoundIoChannelLayout_1677722058 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/soundio/soundio.h:306:8
    channel_count*: cint
    channels*: array[24'i64, enum_SoundIoChannelId_1677722049]
  struct_SoundIoSampleRateRange_1677722060 {.pure, inheritable, bycopy.} = object
    min*: cint               ## Generated based on /usr/include/soundio/soundio.h:313:8
    max*: cint
  struct_SoundIoChannelArea_1677722062 {.pure, inheritable, bycopy.} = object
    ptr_field*: cstring      ## Generated based on /usr/include/soundio/soundio.h:319:8
    step*: cint
  struct_SoundIo_1677722064 {.pure, inheritable, bycopy.} = object
    userdata*: pointer       ## Generated based on /usr/include/soundio/soundio.h:328:8
    on_devices_change*: proc (a0: ptr struct_SoundIo_1677722065): void {.cdecl.}
    on_backend_disconnect*: proc (a0: ptr struct_SoundIo_1677722065; a1: cint): void {.
        cdecl.}
    on_events_signal*: proc (a0: ptr struct_SoundIo_1677722065): void {.cdecl.}
    current_backend*: enum_SoundIoBackend_1677722053
    app_name*: cstring
    emit_rtprio_warning*: proc (): void {.cdecl.}
    jack_info_callback*: proc (a0: cstring): void {.cdecl.}
    jack_error_callback*: proc (a0: cstring): void {.cdecl.}
  struct_SoundIoDevice_1677722066 {.pure, inheritable, bycopy.} = object
    soundio*: ptr struct_SoundIo_1677722065 ## Generated based on /usr/include/soundio/soundio.h:387:8
    id*: cstring
    name*: cstring
    aim*: enum_SoundIoDeviceAim_1677722055
    layouts*: ptr struct_SoundIoChannelLayout_1677722059
    layout_count*: cint
    current_layout*: struct_SoundIoChannelLayout_1677722059
    formats*: ptr enum_SoundIoFormat_1677722057
    format_count*: cint
    current_format*: enum_SoundIoFormat_1677722057
    sample_rates*: ptr struct_SoundIoSampleRateRange_1677722061
    sample_rate_count*: cint
    sample_rate_current*: cint
    software_latency_min*: cdouble
    software_latency_max*: cdouble
    software_latency_current*: cdouble
    is_raw*: bool
    ref_count*: cint
    probe_error*: cint
  struct_SoundIoOutStream_1677722068 {.pure, inheritable, bycopy.} = object
    device*: ptr struct_SoundIoDevice_1677722067 ## Generated based on /usr/include/soundio/soundio.h:497:8
    format*: enum_SoundIoFormat_1677722057
    sample_rate*: cint
    layout*: struct_SoundIoChannelLayout_1677722059
    software_latency*: cdouble
    volume*: cfloat
    userdata*: pointer
    write_callback*: proc (a0: ptr struct_SoundIoOutStream_1677722069; a1: cint;
                           a2: cint): void {.cdecl.}
    underflow_callback*: proc (a0: ptr struct_SoundIoOutStream_1677722069): void {.
        cdecl.}
    error_callback*: proc (a0: ptr struct_SoundIoOutStream_1677722069; a1: cint): void {.
        cdecl.}
    name*: cstring
    non_terminal_hint*: bool
    bytes_per_frame*: cint
    bytes_per_sample*: cint
    layout_error*: cint
  struct_SoundIoInStream_1677722070 {.pure, inheritable, bycopy.} = object
    device*: ptr struct_SoundIoDevice_1677722067 ## Generated based on /usr/include/soundio/soundio.h:600:8
    format*: enum_SoundIoFormat_1677722057
    sample_rate*: cint
    layout*: struct_SoundIoChannelLayout_1677722059
    software_latency*: cdouble
    userdata*: pointer
    read_callback*: proc (a0: ptr struct_SoundIoInStream_1677722071; a1: cint;
                          a2: cint): void {.cdecl.}
    overflow_callback*: proc (a0: ptr struct_SoundIoInStream_1677722071): void {.
        cdecl.}
    error_callback*: proc (a0: ptr struct_SoundIoInStream_1677722071; a1: cint): void {.
        cdecl.}
    name*: cstring
    non_terminal_hint*: bool
    bytes_per_frame*: cint
    bytes_per_sample*: cint
    layout_error*: cint
  struct_SoundIoDevice_1677722067 = (when declared(struct_SoundIoDevice):
    when ownSizeof(struct_SoundIoDevice) != ownSizeof(struct_SoundIoDevice_1677722066):
      static :
        warning("Declaration of " & "struct_SoundIoDevice" &
            " exists but with different size")
    struct_SoundIoDevice
   else:
    struct_SoundIoDevice_1677722066)
  struct_SoundIo_1677722065 = (when declared(struct_SoundIo):
    when ownSizeof(struct_SoundIo) != ownSizeof(struct_SoundIo_1677722064):
      static :
        warning("Declaration of " & "struct_SoundIo" &
            " exists but with different size")
    struct_SoundIo
   else:
    struct_SoundIo_1677722064)
  enum_SoundIoChannelLayoutId_1677722051 = (when declared(
      enum_SoundIoChannelLayoutId):
    when ownSizeof(enum_SoundIoChannelLayoutId) !=
        ownSizeof(enum_SoundIoChannelLayoutId_1677722050):
      static :
        warning("Declaration of " & "enum_SoundIoChannelLayoutId" &
            " exists but with different size")
    enum_SoundIoChannelLayoutId
   else:
    enum_SoundIoChannelLayoutId_1677722050)
  enum_SoundIoFormat_1677722057 = (when declared(enum_SoundIoFormat):
    when ownSizeof(enum_SoundIoFormat) != ownSizeof(enum_SoundIoFormat_1677722056):
      static :
        warning("Declaration of " & "enum_SoundIoFormat" &
            " exists but with different size")
    enum_SoundIoFormat
   else:
    enum_SoundIoFormat_1677722056)
  enum_SoundIoBackend_1677722053 = (when declared(enum_SoundIoBackend):
    when ownSizeof(enum_SoundIoBackend) != ownSizeof(enum_SoundIoBackend_1677722052):
      static :
        warning("Declaration of " & "enum_SoundIoBackend" &
            " exists but with different size")
    enum_SoundIoBackend
   else:
    enum_SoundIoBackend_1677722052)
  struct_SoundIoInStream_1677722071 = (when declared(struct_SoundIoInStream):
    when ownSizeof(struct_SoundIoInStream) != ownSizeof(struct_SoundIoInStream_1677722070):
      static :
        warning("Declaration of " & "struct_SoundIoInStream" &
            " exists but with different size")
    struct_SoundIoInStream
   else:
    struct_SoundIoInStream_1677722070)
  struct_SoundIoSampleRateRange_1677722061 = (when declared(
      struct_SoundIoSampleRateRange):
    when ownSizeof(struct_SoundIoSampleRateRange) !=
        ownSizeof(struct_SoundIoSampleRateRange_1677722060):
      static :
        warning("Declaration of " & "struct_SoundIoSampleRateRange" &
            " exists but with different size")
    struct_SoundIoSampleRateRange
   else:
    struct_SoundIoSampleRateRange_1677722060)
  struct_SoundIoChannelArea_1677722063 = (when declared(
      struct_SoundIoChannelArea):
    when ownSizeof(struct_SoundIoChannelArea) !=
        ownSizeof(struct_SoundIoChannelArea_1677722062):
      static :
        warning("Declaration of " & "struct_SoundIoChannelArea" &
            " exists but with different size")
    struct_SoundIoChannelArea
   else:
    struct_SoundIoChannelArea_1677722062)
  struct_SoundIoOutStream_1677722069 = (when declared(struct_SoundIoOutStream):
    when ownSizeof(struct_SoundIoOutStream) !=
        ownSizeof(struct_SoundIoOutStream_1677722068):
      static :
        warning("Declaration of " & "struct_SoundIoOutStream" &
            " exists but with different size")
    struct_SoundIoOutStream
   else:
    struct_SoundIoOutStream_1677722068)
  enum_SoundIoDeviceAim_1677722055 = (when declared(enum_SoundIoDeviceAim):
    when ownSizeof(enum_SoundIoDeviceAim) != ownSizeof(enum_SoundIoDeviceAim_1677722054):
      static :
        warning("Declaration of " & "enum_SoundIoDeviceAim" &
            " exists but with different size")
    enum_SoundIoDeviceAim
   else:
    enum_SoundIoDeviceAim_1677722054)
  enum_SoundIoError_1677722047 = (when declared(enum_SoundIoError):
    when ownSizeof(enum_SoundIoError) != ownSizeof(enum_SoundIoError_1677722046):
      static :
        warning("Declaration of " & "enum_SoundIoError" &
            " exists but with different size")
    enum_SoundIoError
   else:
    enum_SoundIoError_1677722046)
  struct_SoundIoChannelLayout_1677722059 = (when declared(
      struct_SoundIoChannelLayout):
    when ownSizeof(struct_SoundIoChannelLayout) !=
        ownSizeof(struct_SoundIoChannelLayout_1677722058):
      static :
        warning("Declaration of " & "struct_SoundIoChannelLayout" &
            " exists but with different size")
    struct_SoundIoChannelLayout
   else:
    struct_SoundIoChannelLayout_1677722058)
  enum_SoundIoChannelId_1677722049 = (when declared(enum_SoundIoChannelId):
    when ownSizeof(enum_SoundIoChannelId) != ownSizeof(enum_SoundIoChannelId_1677722048):
      static :
        warning("Declaration of " & "enum_SoundIoChannelId" &
            " exists but with different size")
    enum_SoundIoChannelId
   else:
    enum_SoundIoChannelId_1677722048)
when not declared(struct_SoundIoDevice):
  type
    struct_SoundIoDevice* = struct_SoundIoDevice_1677722066
else:
  static :
    hint("Declaration of " & "struct_SoundIoDevice" &
        " already exists, not redeclaring")
when not declared(struct_SoundIo):
  type
    struct_SoundIo* = struct_SoundIo_1677722064
else:
  static :
    hint("Declaration of " & "struct_SoundIo" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoChannelLayoutId):
  type
    enum_SoundIoChannelLayoutId* = enum_SoundIoChannelLayoutId_1677722050
else:
  static :
    hint("Declaration of " & "enum_SoundIoChannelLayoutId" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoFormat):
  type
    enum_SoundIoFormat* = enum_SoundIoFormat_1677722056
else:
  static :
    hint("Declaration of " & "enum_SoundIoFormat" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoBackend):
  type
    enum_SoundIoBackend* = enum_SoundIoBackend_1677722052
else:
  static :
    hint("Declaration of " & "enum_SoundIoBackend" &
        " already exists, not redeclaring")
when not declared(struct_SoundIoInStream):
  type
    struct_SoundIoInStream* = struct_SoundIoInStream_1677722070
else:
  static :
    hint("Declaration of " & "struct_SoundIoInStream" &
        " already exists, not redeclaring")
when not declared(struct_SoundIoSampleRateRange):
  type
    struct_SoundIoSampleRateRange* = struct_SoundIoSampleRateRange_1677722060
else:
  static :
    hint("Declaration of " & "struct_SoundIoSampleRateRange" &
        " already exists, not redeclaring")
when not declared(struct_SoundIoChannelArea):
  type
    struct_SoundIoChannelArea* = struct_SoundIoChannelArea_1677722062
else:
  static :
    hint("Declaration of " & "struct_SoundIoChannelArea" &
        " already exists, not redeclaring")
when not declared(struct_SoundIoOutStream):
  type
    struct_SoundIoOutStream* = struct_SoundIoOutStream_1677722068
else:
  static :
    hint("Declaration of " & "struct_SoundIoOutStream" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoDeviceAim):
  type
    enum_SoundIoDeviceAim* = enum_SoundIoDeviceAim_1677722054
else:
  static :
    hint("Declaration of " & "enum_SoundIoDeviceAim" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoError):
  type
    enum_SoundIoError* = enum_SoundIoError_1677722046
else:
  static :
    hint("Declaration of " & "enum_SoundIoError" &
        " already exists, not redeclaring")
when not declared(struct_SoundIoChannelLayout):
  type
    struct_SoundIoChannelLayout* = struct_SoundIoChannelLayout_1677722058
else:
  static :
    hint("Declaration of " & "struct_SoundIoChannelLayout" &
        " already exists, not redeclaring")
when not declared(enum_SoundIoChannelId):
  type
    enum_SoundIoChannelId* = enum_SoundIoChannelId_1677722048
else:
  static :
    hint("Declaration of " & "enum_SoundIoChannelId" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS16NE):
  when SoundIoFormatS16LE is typedesc:
    type
      SoundIoFormatS16NE* = SoundIoFormatS16LE ## Generated based on /usr/include/soundio/soundio.h:282:9
  else:
    when SoundIoFormatS16LE is static:
      const
        SoundIoFormatS16NE* = SoundIoFormatS16LE ## Generated based on /usr/include/soundio/soundio.h:282:9
    else:
      let SoundIoFormatS16NE* = SoundIoFormatS16LE ## Generated based on /usr/include/soundio/soundio.h:282:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS16NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU16NE):
  when SoundIoFormatU16LE is typedesc:
    type
      SoundIoFormatU16NE* = SoundIoFormatU16LE ## Generated based on /usr/include/soundio/soundio.h:283:9
  else:
    when SoundIoFormatU16LE is static:
      const
        SoundIoFormatU16NE* = SoundIoFormatU16LE ## Generated based on /usr/include/soundio/soundio.h:283:9
    else:
      let SoundIoFormatU16NE* = SoundIoFormatU16LE ## Generated based on /usr/include/soundio/soundio.h:283:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU16NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS24NE):
  when SoundIoFormatS24LE is typedesc:
    type
      SoundIoFormatS24NE* = SoundIoFormatS24LE ## Generated based on /usr/include/soundio/soundio.h:284:9
  else:
    when SoundIoFormatS24LE is static:
      const
        SoundIoFormatS24NE* = SoundIoFormatS24LE ## Generated based on /usr/include/soundio/soundio.h:284:9
    else:
      let SoundIoFormatS24NE* = SoundIoFormatS24LE ## Generated based on /usr/include/soundio/soundio.h:284:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS24NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU24NE):
  when SoundIoFormatU24LE is typedesc:
    type
      SoundIoFormatU24NE* = SoundIoFormatU24LE ## Generated based on /usr/include/soundio/soundio.h:285:9
  else:
    when SoundIoFormatU24LE is static:
      const
        SoundIoFormatU24NE* = SoundIoFormatU24LE ## Generated based on /usr/include/soundio/soundio.h:285:9
    else:
      let SoundIoFormatU24NE* = SoundIoFormatU24LE ## Generated based on /usr/include/soundio/soundio.h:285:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU24NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS32NE):
  when SoundIoFormatS32LE is typedesc:
    type
      SoundIoFormatS32NE* = SoundIoFormatS32LE ## Generated based on /usr/include/soundio/soundio.h:286:9
  else:
    when SoundIoFormatS32LE is static:
      const
        SoundIoFormatS32NE* = SoundIoFormatS32LE ## Generated based on /usr/include/soundio/soundio.h:286:9
    else:
      let SoundIoFormatS32NE* = SoundIoFormatS32LE ## Generated based on /usr/include/soundio/soundio.h:286:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS32NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU32NE):
  when SoundIoFormatU32LE is typedesc:
    type
      SoundIoFormatU32NE* = SoundIoFormatU32LE ## Generated based on /usr/include/soundio/soundio.h:287:9
  else:
    when SoundIoFormatU32LE is static:
      const
        SoundIoFormatU32NE* = SoundIoFormatU32LE ## Generated based on /usr/include/soundio/soundio.h:287:9
    else:
      let SoundIoFormatU32NE* = SoundIoFormatU32LE ## Generated based on /usr/include/soundio/soundio.h:287:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU32NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatFloat32NE):
  when SoundIoFormatFloat32LE is typedesc:
    type
      SoundIoFormatFloat32NE* = SoundIoFormatFloat32LE ## Generated based on /usr/include/soundio/soundio.h:288:9
  else:
    when SoundIoFormatFloat32LE is static:
      const
        SoundIoFormatFloat32NE* = SoundIoFormatFloat32LE ## Generated based on /usr/include/soundio/soundio.h:288:9
    else:
      let SoundIoFormatFloat32NE* = SoundIoFormatFloat32LE ## Generated based on /usr/include/soundio/soundio.h:288:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatFloat32NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatFloat64NE):
  when SoundIoFormatFloat64LE is typedesc:
    type
      SoundIoFormatFloat64NE* = SoundIoFormatFloat64LE ## Generated based on /usr/include/soundio/soundio.h:289:9
  else:
    when SoundIoFormatFloat64LE is static:
      const
        SoundIoFormatFloat64NE* = SoundIoFormatFloat64LE ## Generated based on /usr/include/soundio/soundio.h:289:9
    else:
      let SoundIoFormatFloat64NE* = SoundIoFormatFloat64LE ## Generated based on /usr/include/soundio/soundio.h:289:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatFloat64NE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS16FE):
  when SoundIoFormatS16BE is typedesc:
    type
      SoundIoFormatS16FE* = SoundIoFormatS16BE ## Generated based on /usr/include/soundio/soundio.h:291:9
  else:
    when SoundIoFormatS16BE is static:
      const
        SoundIoFormatS16FE* = SoundIoFormatS16BE ## Generated based on /usr/include/soundio/soundio.h:291:9
    else:
      let SoundIoFormatS16FE* = SoundIoFormatS16BE ## Generated based on /usr/include/soundio/soundio.h:291:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS16FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU16FE):
  when SoundIoFormatU16BE is typedesc:
    type
      SoundIoFormatU16FE* = SoundIoFormatU16BE ## Generated based on /usr/include/soundio/soundio.h:292:9
  else:
    when SoundIoFormatU16BE is static:
      const
        SoundIoFormatU16FE* = SoundIoFormatU16BE ## Generated based on /usr/include/soundio/soundio.h:292:9
    else:
      let SoundIoFormatU16FE* = SoundIoFormatU16BE ## Generated based on /usr/include/soundio/soundio.h:292:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU16FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS24FE):
  when SoundIoFormatS24BE is typedesc:
    type
      SoundIoFormatS24FE* = SoundIoFormatS24BE ## Generated based on /usr/include/soundio/soundio.h:293:9
  else:
    when SoundIoFormatS24BE is static:
      const
        SoundIoFormatS24FE* = SoundIoFormatS24BE ## Generated based on /usr/include/soundio/soundio.h:293:9
    else:
      let SoundIoFormatS24FE* = SoundIoFormatS24BE ## Generated based on /usr/include/soundio/soundio.h:293:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS24FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU24FE):
  when SoundIoFormatU24BE is typedesc:
    type
      SoundIoFormatU24FE* = SoundIoFormatU24BE ## Generated based on /usr/include/soundio/soundio.h:294:9
  else:
    when SoundIoFormatU24BE is static:
      const
        SoundIoFormatU24FE* = SoundIoFormatU24BE ## Generated based on /usr/include/soundio/soundio.h:294:9
    else:
      let SoundIoFormatU24FE* = SoundIoFormatU24BE ## Generated based on /usr/include/soundio/soundio.h:294:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU24FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatS32FE):
  when SoundIoFormatS32BE is typedesc:
    type
      SoundIoFormatS32FE* = SoundIoFormatS32BE ## Generated based on /usr/include/soundio/soundio.h:295:9
  else:
    when SoundIoFormatS32BE is static:
      const
        SoundIoFormatS32FE* = SoundIoFormatS32BE ## Generated based on /usr/include/soundio/soundio.h:295:9
    else:
      let SoundIoFormatS32FE* = SoundIoFormatS32BE ## Generated based on /usr/include/soundio/soundio.h:295:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatS32FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatU32FE):
  when SoundIoFormatU32BE is typedesc:
    type
      SoundIoFormatU32FE* = SoundIoFormatU32BE ## Generated based on /usr/include/soundio/soundio.h:296:9
  else:
    when SoundIoFormatU32BE is static:
      const
        SoundIoFormatU32FE* = SoundIoFormatU32BE ## Generated based on /usr/include/soundio/soundio.h:296:9
    else:
      let SoundIoFormatU32FE* = SoundIoFormatU32BE ## Generated based on /usr/include/soundio/soundio.h:296:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatU32FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatFloat32FE):
  when SoundIoFormatFloat32BE is typedesc:
    type
      SoundIoFormatFloat32FE* = SoundIoFormatFloat32BE ## Generated based on /usr/include/soundio/soundio.h:297:9
  else:
    when SoundIoFormatFloat32BE is static:
      const
        SoundIoFormatFloat32FE* = SoundIoFormatFloat32BE ## Generated based on /usr/include/soundio/soundio.h:297:9
    else:
      let SoundIoFormatFloat32FE* = SoundIoFormatFloat32BE ## Generated based on /usr/include/soundio/soundio.h:297:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatFloat32FE" &
        " already exists, not redeclaring")
when not declared(SoundIoFormatFloat64FE):
  when SoundIoFormatFloat64BE is typedesc:
    type
      SoundIoFormatFloat64FE* = SoundIoFormatFloat64BE ## Generated based on /usr/include/soundio/soundio.h:298:9
  else:
    when SoundIoFormatFloat64BE is static:
      const
        SoundIoFormatFloat64FE* = SoundIoFormatFloat64BE ## Generated based on /usr/include/soundio/soundio.h:298:9
    else:
      let SoundIoFormatFloat64FE* = SoundIoFormatFloat64BE ## Generated based on /usr/include/soundio/soundio.h:298:9
else:
  static :
    hint("Declaration of " & "SoundIoFormatFloat64FE" &
        " already exists, not redeclaring")
when not declared(SOUNDIO_MAX_CHANNELS):
  when 24 is static:
    const
      SOUNDIO_MAX_CHANNELS* = 24 ## Generated based on /usr/include/soundio/soundio.h:304:9
  else:
    let SOUNDIO_MAX_CHANNELS* = 24 ## Generated based on /usr/include/soundio/soundio.h:304:9
else:
  static :
    hint("Declaration of " & "SOUNDIO_MAX_CHANNELS" &
        " already exists, not redeclaring")
when not declared(version_string):
  proc version_string*(): cstring {.cdecl, importc: "soundio_version_string".}
else:
  static :
    hint("Declaration of " & "version_string" &
        " already exists, not redeclaring")
when not declared(version_major):
  proc version_major*(): cint {.cdecl, importc: "soundio_version_major".}
else:
  static :
    hint("Declaration of " & "version_major" &
        " already exists, not redeclaring")
when not declared(version_minor):
  proc version_minor*(): cint {.cdecl, importc: "soundio_version_minor".}
else:
  static :
    hint("Declaration of " & "version_minor" &
        " already exists, not redeclaring")
when not declared(version_patch):
  proc version_patch*(): cint {.cdecl, importc: "soundio_version_patch".}
else:
  static :
    hint("Declaration of " & "version_patch" &
        " already exists, not redeclaring")
when not declared(createSoundIO):
  proc createSoundIO*(): ptr struct_SoundIo_1677722065 {.cdecl,
      importc: "soundio_create".}
else:
  static :
    hint("Declaration of " & "createSoundIO" &
        " already exists, not redeclaring")
when not declared(destroySoundIO):
  proc destroySoundIO*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_destroy".}
else:
  static :
    hint("Declaration of " & "destroySoundIO" &
        " already exists, not redeclaring")
when not declared(connect):
  proc connect*(soundio: ptr struct_SoundIo_1677722065): cint {.cdecl,
      importc: "soundio_connect".}
else:
  static :
    hint("Declaration of " & "connect" & " already exists, not redeclaring")
when not declared(connect_backend):
  proc connect_backend*(soundio: ptr struct_SoundIo_1677722065;
                        backend: enum_SoundIoBackend_1677722053): cint {.cdecl,
      importc: "soundio_connect_backend".}
else:
  static :
    hint("Declaration of " & "connect_backend" &
        " already exists, not redeclaring")
when not declared(disconnect):
  proc disconnect*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_disconnect".}
else:
  static :
    hint("Declaration of " & "disconnect" & " already exists, not redeclaring")
when not declared(strerror):
  proc strerror*(error: cint): cstring {.cdecl, importc: "soundio_strerror".}
else:
  static :
    hint("Declaration of " & "strerror" & " already exists, not redeclaring")
when not declared(backend_name):
  proc backend_name*(backend: enum_SoundIoBackend_1677722053): cstring {.cdecl,
      importc: "soundio_backend_name".}
else:
  static :
    hint("Declaration of " & "backend_name" & " already exists, not redeclaring")
when not declared(backend_count):
  proc backend_count*(soundio: ptr struct_SoundIo_1677722065): cint {.cdecl,
      importc: "soundio_backend_count".}
else:
  static :
    hint("Declaration of " & "backend_count" &
        " already exists, not redeclaring")
when not declared(get_backend):
  proc get_backend*(soundio: ptr struct_SoundIo_1677722065; index: cint): enum_SoundIoBackend_1677722053 {.
      cdecl, importc: "soundio_get_backend".}
else:
  static :
    hint("Declaration of " & "get_backend" & " already exists, not redeclaring")
when not declared(have_backend):
  proc have_backend*(backend: enum_SoundIoBackend_1677722053): bool {.cdecl,
      importc: "soundio_have_backend".}
else:
  static :
    hint("Declaration of " & "have_backend" & " already exists, not redeclaring")
when not declared(flush_events):
  proc flush_events*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_flush_events".}
else:
  static :
    hint("Declaration of " & "flush_events" & " already exists, not redeclaring")
when not declared(wait_events):
  proc wait_events*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_wait_events".}
else:
  static :
    hint("Declaration of " & "wait_events" & " already exists, not redeclaring")
when not declared(wakeup):
  proc wakeup*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_wakeup".}
else:
  static :
    hint("Declaration of " & "wakeup" & " already exists, not redeclaring")
when not declared(force_device_scan):
  proc force_device_scan*(soundio: ptr struct_SoundIo_1677722065): void {.cdecl,
      importc: "soundio_force_device_scan".}
else:
  static :
    hint("Declaration of " & "force_device_scan" &
        " already exists, not redeclaring")
when not declared(channel_layout_equal):
  proc channel_layout_equal*(a: ptr struct_SoundIoChannelLayout_1677722059;
                             b: ptr struct_SoundIoChannelLayout_1677722059): bool {.
      cdecl, importc: "soundio_channel_layout_equal".}
else:
  static :
    hint("Declaration of " & "channel_layout_equal" &
        " already exists, not redeclaring")
when not declared(get_channel_name):
  proc get_channel_name*(id: enum_SoundIoChannelId_1677722049): cstring {.cdecl,
      importc: "soundio_get_channel_name".}
else:
  static :
    hint("Declaration of " & "get_channel_name" &
        " already exists, not redeclaring")
when not declared(parse_channel_id):
  proc parse_channel_id*(str: cstring; str_len: cint): enum_SoundIoChannelId_1677722049 {.
      cdecl, importc: "soundio_parse_channel_id".}
else:
  static :
    hint("Declaration of " & "parse_channel_id" &
        " already exists, not redeclaring")
when not declared(channel_layout_builtin_count):
  proc channel_layout_builtin_count*(): cint {.cdecl,
      importc: "soundio_channel_layout_builtin_count".}
else:
  static :
    hint("Declaration of " & "channel_layout_builtin_count" &
        " already exists, not redeclaring")
when not declared(channel_layout_get_builtin):
  proc channel_layout_get_builtin*(index: cint): ptr struct_SoundIoChannelLayout_1677722059 {.
      cdecl, importc: "soundio_channel_layout_get_builtin".}
else:
  static :
    hint("Declaration of " & "channel_layout_get_builtin" &
        " already exists, not redeclaring")
when not declared(channel_layout_get_default):
  proc channel_layout_get_default*(channel_count: cint): ptr struct_SoundIoChannelLayout_1677722059 {.
      cdecl, importc: "soundio_channel_layout_get_default".}
else:
  static :
    hint("Declaration of " & "channel_layout_get_default" &
        " already exists, not redeclaring")
when not declared(channel_layout_find_channel):
  proc channel_layout_find_channel*(layout: ptr struct_SoundIoChannelLayout_1677722059;
                                    channel: enum_SoundIoChannelId_1677722049): cint {.
      cdecl, importc: "soundio_channel_layout_find_channel".}
else:
  static :
    hint("Declaration of " & "channel_layout_find_channel" &
        " already exists, not redeclaring")
when not declared(channel_layout_detect_builtin):
  proc channel_layout_detect_builtin*(layout: ptr struct_SoundIoChannelLayout_1677722059): bool {.
      cdecl, importc: "soundio_channel_layout_detect_builtin".}
else:
  static :
    hint("Declaration of " & "channel_layout_detect_builtin" &
        " already exists, not redeclaring")
when not declared(best_matching_channel_layout):
  proc best_matching_channel_layout*(preferred_layouts: ptr struct_SoundIoChannelLayout_1677722059;
                                     preferred_layout_count: cint;
      available_layouts: ptr struct_SoundIoChannelLayout_1677722059;
                                     available_layout_count: cint): ptr struct_SoundIoChannelLayout_1677722059 {.
      cdecl, importc: "soundio_best_matching_channel_layout".}
else:
  static :
    hint("Declaration of " & "best_matching_channel_layout" &
        " already exists, not redeclaring")
when not declared(sort_channel_layouts):
  proc sort_channel_layouts*(layouts: ptr struct_SoundIoChannelLayout_1677722059;
                             layout_count: cint): void {.cdecl,
      importc: "soundio_sort_channel_layouts".}
else:
  static :
    hint("Declaration of " & "sort_channel_layouts" &
        " already exists, not redeclaring")
when not declared(get_bytes_per_sample):
  proc get_bytes_per_sample*(format: enum_SoundIoFormat_1677722057): cint {.
      cdecl, importc: "soundio_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "get_bytes_per_sample" &
        " already exists, not redeclaring")
when not declared(format_string):
  proc format_string*(format: enum_SoundIoFormat_1677722057): cstring {.cdecl,
      importc: "soundio_format_string".}
else:
  static :
    hint("Declaration of " & "format_string" &
        " already exists, not redeclaring")
when not declared(input_device_count):
  proc input_device_count*(soundio: ptr struct_SoundIo_1677722065): cint {.
      cdecl, importc: "soundio_input_device_count".}
else:
  static :
    hint("Declaration of " & "input_device_count" &
        " already exists, not redeclaring")
when not declared(output_device_count):
  proc output_device_count*(soundio: ptr struct_SoundIo_1677722065): cint {.
      cdecl, importc: "soundio_output_device_count".}
else:
  static :
    hint("Declaration of " & "output_device_count" &
        " already exists, not redeclaring")
when not declared(get_input_device):
  proc get_input_device*(soundio: ptr struct_SoundIo_1677722065; index: cint): ptr struct_SoundIoDevice_1677722067 {.
      cdecl, importc: "soundio_get_input_device".}
else:
  static :
    hint("Declaration of " & "get_input_device" &
        " already exists, not redeclaring")
when not declared(get_output_device):
  proc get_output_device*(soundio: ptr struct_SoundIo_1677722065; index: cint): ptr struct_SoundIoDevice_1677722067 {.
      cdecl, importc: "soundio_get_output_device".}
else:
  static :
    hint("Declaration of " & "get_output_device" &
        " already exists, not redeclaring")
when not declared(default_input_device_index):
  proc default_input_device_index*(soundio: ptr struct_SoundIo_1677722065): cint {.
      cdecl, importc: "soundio_default_input_device_index".}
else:
  static :
    hint("Declaration of " & "default_input_device_index" &
        " already exists, not redeclaring")
when not declared(default_output_device_index):
  proc default_output_device_index*(soundio: ptr struct_SoundIo_1677722065): cint {.
      cdecl, importc: "soundio_default_output_device_index".}
else:
  static :
    hint("Declaration of " & "default_output_device_index" &
        " already exists, not redeclaring")
when not declared(device_ref):
  proc device_ref*(device: ptr struct_SoundIoDevice_1677722067): void {.cdecl,
      importc: "soundio_device_ref".}
else:
  static :
    hint("Declaration of " & "device_ref" & " already exists, not redeclaring")
when not declared(device_unref):
  proc device_unref*(device: ptr struct_SoundIoDevice_1677722067): void {.cdecl,
      importc: "soundio_device_unref".}
else:
  static :
    hint("Declaration of " & "device_unref" & " already exists, not redeclaring")
when not declared(device_equal):
  proc device_equal*(a: ptr struct_SoundIoDevice_1677722067;
                     b: ptr struct_SoundIoDevice_1677722067): bool {.cdecl,
      importc: "soundio_device_equal".}
else:
  static :
    hint("Declaration of " & "device_equal" & " already exists, not redeclaring")
when not declared(device_sort_channel_layouts):
  proc device_sort_channel_layouts*(device: ptr struct_SoundIoDevice_1677722067): void {.
      cdecl, importc: "soundio_device_sort_channel_layouts".}
else:
  static :
    hint("Declaration of " & "device_sort_channel_layouts" &
        " already exists, not redeclaring")
when not declared(device_supports_format):
  proc device_supports_format*(device: ptr struct_SoundIoDevice_1677722067;
                               format: enum_SoundIoFormat_1677722057): bool {.
      cdecl, importc: "soundio_device_supports_format".}
else:
  static :
    hint("Declaration of " & "device_supports_format" &
        " already exists, not redeclaring")
when not declared(device_supports_layout):
  proc device_supports_layout*(device: ptr struct_SoundIoDevice_1677722067;
                               layout: ptr struct_SoundIoChannelLayout_1677722059): bool {.
      cdecl, importc: "soundio_device_supports_layout".}
else:
  static :
    hint("Declaration of " & "device_supports_layout" &
        " already exists, not redeclaring")
when not declared(device_supports_sample_rate):
  proc device_supports_sample_rate*(device: ptr struct_SoundIoDevice_1677722067;
                                    sample_rate: cint): bool {.cdecl,
      importc: "soundio_device_supports_sample_rate".}
else:
  static :
    hint("Declaration of " & "device_supports_sample_rate" &
        " already exists, not redeclaring")
when not declared(device_nearest_sample_rate):
  proc device_nearest_sample_rate*(device: ptr struct_SoundIoDevice_1677722067;
                                   sample_rate: cint): cint {.cdecl,
      importc: "soundio_device_nearest_sample_rate".}
else:
  static :
    hint("Declaration of " & "device_nearest_sample_rate" &
        " already exists, not redeclaring")
when not declared(outstream_create):
  proc outstream_create*(device: ptr struct_SoundIoDevice_1677722067): ptr struct_SoundIoOutStream_1677722069 {.
      cdecl, importc: "soundio_outstream_create".}
else:
  static :
    hint("Declaration of " & "outstream_create" &
        " already exists, not redeclaring")
when not declared(outstream_destroy):
  proc outstream_destroy*(outstream: ptr struct_SoundIoOutStream_1677722069): void {.
      cdecl, importc: "soundio_outstream_destroy".}
else:
  static :
    hint("Declaration of " & "outstream_destroy" &
        " already exists, not redeclaring")
when not declared(outstream_open):
  proc outstream_open*(outstream: ptr struct_SoundIoOutStream_1677722069): cint {.
      cdecl, importc: "soundio_outstream_open".}
else:
  static :
    hint("Declaration of " & "outstream_open" &
        " already exists, not redeclaring")
when not declared(outstream_start):
  proc outstream_start*(outstream: ptr struct_SoundIoOutStream_1677722069): cint {.
      cdecl, importc: "soundio_outstream_start".}
else:
  static :
    hint("Declaration of " & "outstream_start" &
        " already exists, not redeclaring")
when not declared(outstream_begin_write):
  proc outstream_begin_write*(outstream: ptr struct_SoundIoOutStream_1677722069;
                              areas: ptr ptr struct_SoundIoChannelArea_1677722063;
                              frame_count: ptr cint): cint {.cdecl,
      importc: "soundio_outstream_begin_write".}
else:
  static :
    hint("Declaration of " & "outstream_begin_write" &
        " already exists, not redeclaring")
when not declared(outstream_end_write):
  proc outstream_end_write*(outstream: ptr struct_SoundIoOutStream_1677722069): cint {.
      cdecl, importc: "soundio_outstream_end_write".}
else:
  static :
    hint("Declaration of " & "outstream_end_write" &
        " already exists, not redeclaring")
when not declared(outstream_clear_buffer):
  proc outstream_clear_buffer*(outstream: ptr struct_SoundIoOutStream_1677722069): cint {.
      cdecl, importc: "soundio_outstream_clear_buffer".}
else:
  static :
    hint("Declaration of " & "outstream_clear_buffer" &
        " already exists, not redeclaring")
when not declared(outstream_pause):
  proc outstream_pause*(outstream: ptr struct_SoundIoOutStream_1677722069;
                        pause: bool): cint {.cdecl,
      importc: "soundio_outstream_pause".}
else:
  static :
    hint("Declaration of " & "outstream_pause" &
        " already exists, not redeclaring")
when not declared(outstream_get_latency):
  proc outstream_get_latency*(outstream: ptr struct_SoundIoOutStream_1677722069;
                              out_latency: ptr cdouble): cint {.cdecl,
      importc: "soundio_outstream_get_latency".}
else:
  static :
    hint("Declaration of " & "outstream_get_latency" &
        " already exists, not redeclaring")
when not declared(outstream_set_volume):
  proc outstream_set_volume*(outstream: ptr struct_SoundIoOutStream_1677722069;
                             volume: cdouble): cint {.cdecl,
      importc: "soundio_outstream_set_volume".}
else:
  static :
    hint("Declaration of " & "outstream_set_volume" &
        " already exists, not redeclaring")
when not declared(instream_create):
  proc instream_create*(device: ptr struct_SoundIoDevice_1677722067): ptr struct_SoundIoInStream_1677722071 {.
      cdecl, importc: "soundio_instream_create".}
else:
  static :
    hint("Declaration of " & "instream_create" &
        " already exists, not redeclaring")
when not declared(instream_destroy):
  proc instream_destroy*(instream: ptr struct_SoundIoInStream_1677722071): void {.
      cdecl, importc: "soundio_instream_destroy".}
else:
  static :
    hint("Declaration of " & "instream_destroy" &
        " already exists, not redeclaring")
when not declared(instream_open):
  proc instream_open*(instream: ptr struct_SoundIoInStream_1677722071): cint {.
      cdecl, importc: "soundio_instream_open".}
else:
  static :
    hint("Declaration of " & "instream_open" &
        " already exists, not redeclaring")
when not declared(instream_start):
  proc instream_start*(instream: ptr struct_SoundIoInStream_1677722071): cint {.
      cdecl, importc: "soundio_instream_start".}
else:
  static :
    hint("Declaration of " & "instream_start" &
        " already exists, not redeclaring")
when not declared(instream_begin_read):
  proc instream_begin_read*(instream: ptr struct_SoundIoInStream_1677722071;
                            areas: ptr ptr struct_SoundIoChannelArea_1677722063;
                            frame_count: ptr cint): cint {.cdecl,
      importc: "soundio_instream_begin_read".}
else:
  static :
    hint("Declaration of " & "instream_begin_read" &
        " already exists, not redeclaring")
when not declared(instream_end_read):
  proc instream_end_read*(instream: ptr struct_SoundIoInStream_1677722071): cint {.
      cdecl, importc: "soundio_instream_end_read".}
else:
  static :
    hint("Declaration of " & "instream_end_read" &
        " already exists, not redeclaring")
when not declared(instream_pause):
  proc instream_pause*(instream: ptr struct_SoundIoInStream_1677722071;
                       pause: bool): cint {.cdecl,
      importc: "soundio_instream_pause".}
else:
  static :
    hint("Declaration of " & "instream_pause" &
        " already exists, not redeclaring")
when not declared(instream_get_latency):
  proc instream_get_latency*(instream: ptr struct_SoundIoInStream_1677722071;
                             out_latency: ptr cdouble): cint {.cdecl,
      importc: "soundio_instream_get_latency".}
else:
  static :
    hint("Declaration of " & "instream_get_latency" &
        " already exists, not redeclaring")
when not declared(ring_buffer_create):
  proc ring_buffer_create*(soundio: ptr struct_SoundIo_1677722065;
                           requested_capacity: cint): ptr struct_SoundIoRingBuffer {.
      cdecl, importc: "soundio_ring_buffer_create".}
else:
  static :
    hint("Declaration of " & "ring_buffer_create" &
        " already exists, not redeclaring")
when not declared(ring_buffer_destroy):
  proc ring_buffer_destroy*(ring_buffer: ptr struct_SoundIoRingBuffer): void {.
      cdecl, importc: "soundio_ring_buffer_destroy".}
else:
  static :
    hint("Declaration of " & "ring_buffer_destroy" &
        " already exists, not redeclaring")
when not declared(ring_buffer_capacity):
  proc ring_buffer_capacity*(ring_buffer: ptr struct_SoundIoRingBuffer): cint {.
      cdecl, importc: "soundio_ring_buffer_capacity".}
else:
  static :
    hint("Declaration of " & "ring_buffer_capacity" &
        " already exists, not redeclaring")
when not declared(ring_buffer_write_ptr):
  proc ring_buffer_write_ptr*(ring_buffer: ptr struct_SoundIoRingBuffer): cstring {.
      cdecl, importc: "soundio_ring_buffer_write_ptr".}
else:
  static :
    hint("Declaration of " & "ring_buffer_write_ptr" &
        " already exists, not redeclaring")
when not declared(ring_buffer_advance_write_ptr):
  proc ring_buffer_advance_write_ptr*(ring_buffer: ptr struct_SoundIoRingBuffer;
                                      count: cint): void {.cdecl,
      importc: "soundio_ring_buffer_advance_write_ptr".}
else:
  static :
    hint("Declaration of " & "ring_buffer_advance_write_ptr" &
        " already exists, not redeclaring")
when not declared(ring_buffer_read_ptr):
  proc ring_buffer_read_ptr*(ring_buffer: ptr struct_SoundIoRingBuffer): cstring {.
      cdecl, importc: "soundio_ring_buffer_read_ptr".}
else:
  static :
    hint("Declaration of " & "ring_buffer_read_ptr" &
        " already exists, not redeclaring")
when not declared(ring_buffer_advance_read_ptr):
  proc ring_buffer_advance_read_ptr*(ring_buffer: ptr struct_SoundIoRingBuffer;
                                     count: cint): void {.cdecl,
      importc: "soundio_ring_buffer_advance_read_ptr".}
else:
  static :
    hint("Declaration of " & "ring_buffer_advance_read_ptr" &
        " already exists, not redeclaring")
when not declared(ring_buffer_fill_count):
  proc ring_buffer_fill_count*(ring_buffer: ptr struct_SoundIoRingBuffer): cint {.
      cdecl, importc: "soundio_ring_buffer_fill_count".}
else:
  static :
    hint("Declaration of " & "ring_buffer_fill_count" &
        " already exists, not redeclaring")
when not declared(ring_buffer_free_count):
  proc ring_buffer_free_count*(ring_buffer: ptr struct_SoundIoRingBuffer): cint {.
      cdecl, importc: "soundio_ring_buffer_free_count".}
else:
  static :
    hint("Declaration of " & "ring_buffer_free_count" &
        " already exists, not redeclaring")
when not declared(ring_buffer_clear):
  proc ring_buffer_clear*(ring_buffer: ptr struct_SoundIoRingBuffer): void {.
      cdecl, importc: "soundio_ring_buffer_clear".}
else:
  static :
    hint("Declaration of " & "ring_buffer_clear" &
        " already exists, not redeclaring")