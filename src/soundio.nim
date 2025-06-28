{.passL: "-lsoundio".}

when defined(useFuthark):
  import std/[os, strutils]
  import futhark

  # Remove the `soundio_` prefix since Nim doesn't struggle as much with collisions as C
  proc renameCb(name, kind: string, partOf = ""): string =
    result = name
    if kind == "proc":
      if name == "soundio_create":
        # 'create' would collide with 'system.create'
        result = "createSoundIO"
      elif name == "soundio_destroy":
        result = "destroySoundIO"
      else:
        result = name.replace("soundio_", "")

  importc:
    outputPath currentSourcePath.parentDir / "soundio_gen.nim"
    path "/usr/include/soundio"
    renameCallback renameCb
    "soundio.h"
else:
  include "soundio_gen.nim"
