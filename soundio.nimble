# Package

version = "0.1.0"
author = "Christopher Arndt"
description = "A Nim binding for libsoundio"
license = "MIT"

srcDir = "src"
skipDirs = @["examples"]

# Dependencies

requires "nim >= 2.0"

let examples = @[
    "list_devices",
]

task examples, "Build examples (release)":
    for example in examples:
        echo "Building example '" & example & "'..."
        selfExec("compile -d:release -d:strip examples/" & example & ".nim")

task examples_debug, "Build examples (debug)":
    for example in examples:
        echo "Building example '" & example & "' (debug)..."
        selfExec("compile examples/" & example & ".nim")
