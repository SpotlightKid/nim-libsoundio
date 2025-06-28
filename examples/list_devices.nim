##
## List available audio devices and their capabilities and configurations
##

import std/strformat
import soundio


proc printChannelLayout(layout: ptr struct_SoundIoChannelLayout) =
  if not layout.name.isNil:
    write stderr, $layout.name
  else:
    writeLine stderr, $getChannelName(layout.channels[0])

    for i in 0..<layout.channelCount:
      write stderr, ", " & $getChannelName(layout.channels[i])


proc printDevice(device: ptr struct_SoundIoDevice, isDefault: bool, shortOutput: bool = false) =
  let
    defaultStr = if isDefault: " (default)" else: ""
    rawStr = if device.isRaw: " (raw)" else: ""

  writeLine stderr, $device.name & defaultStr & rawStr

  if shortOutput:
    return

  writeLine stderr, "  id: " & $device.id

  if device.probeError == 1:
    writeLine stderr, "  probe error: " & $strError(device.probeError)
  else:
    writeLine stderr, "  channel layouts:"

    for i in 0..<device.layoutCount:
      write stderr, "    "
      printChannelLayout(cast[ptr UncheckedArray[struct_SoundIoChannelLayout]](device.layouts)[i].addr)
      write stderr, "\n"

    if device.currentLayout.channelCount > 0:
      write stderr,"  current layout: "
      print_channel_layout(device.currentLayout.addr)
      write stderr, "\n"

    writeLine stderr,"  sample rates:"

    for i in 0..<device.sampleRateCount:
      let range = cast[ptr UncheckedArray[struct_SoundIoSampleRateRange]](device.sampleRates)[i]
      writeLine stderr, "    " & $range.min & " - " & $range.max

    if device.sampleRateCurrent >= 0:
      writeLine stderr,"  current sample rate: " & $device.sampleRateCurrent

    write stderr, "  formats: "

    for i in 0..<device.formatCount:
      let comma = if i == device.formatCount - 1: "" else: ", "
      write stderr,$formatString(cast[ptr UncheckedArray[enum_SoundIoFormat]](device.formats)[i]) & comma

    write stderr, "\n"

    if device.currentFormat != SoundIoFormatInvalid:
      writeLine stderr, "  current format: " & $formatString(device.current_format)

    writeLine stderr, "  min software latency: " & $device.softwareLatencyMin & " sec"
    writeLine stderr, "  max software latency: " & $device.softwareLatencyMax & " sec"

    if device.softwareLatencyCurrent != 0.0:
      writeLine stderr, "  current software latency: " & $device.softwareLatencyCurrent & " sec"

    write stderr, "\n"


proc listDevices*(sio: ptr struct_SoundIo): cint =
  var
    outputCount = outputDeviceCount(sio)
    inputCount = inputDeviceCount(sio)
    defaultOutput = defaultOutputDeviceIndex(sio)
    defaultInput = defaultInputDeviceIndex(sio)

  if inputCount == -1 or outputCount == -1:
    return -1

  writeLine stderr, "--------Input Devices--------\n"

  for i in 0..<inputCount:
    let device = getInputDevice(sio, i)
    printDevice(device, defaultInput == i)
    deviceUnref(device)

  write stderr, "\n"
  writeLine stderr, "\n--------Output Devices--------\n"

  for i in 0..<outputCount:
    let device = getOutputDevice(sio, i)
    printDevice(device, defaultOutput == i)
    deviceUnref(device)

  write stderr, "\n"
  writeLine stderr, &"{inputCount + outputCount} devices found"

  return 0


proc main() =
  writeLine stderr, &"Soundio version: {versionString()}\n"

  var sndio = createSoundIO()

  if sndio.isNil:
    quit("Could not initialize libsoundio (out of memory?)")

  defer: destroySoundIO(sndio)

  var err = connect(sndio)

  if err != 0:
    quit(&"Error connecting: {strError(err)}")

  flushEvents(sndio)

  if listDevices(sndio) != 0:
    quit("Could not list devices")


main()
