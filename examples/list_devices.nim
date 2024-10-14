import soundio

proc main() =
  write stderr, "Soundio version: " & $versionString()
  write stderr, "\n"

  var sndio = createSoundIO()

  if sndio.isNil:
    quit("Could not initialize libsoundio (out of memory?)")

  defer: destroySoundIO(sndio)

  var err = connect(sndio)

  if err != 0:
    quit("Error connecting: " & $strError(err))

  flushEvents(sndio)

  if listDevices(sndio) != 0:
    quit("Could not list devices")


main()
