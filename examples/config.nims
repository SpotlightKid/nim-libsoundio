switch("path", "$projectDir/../src")

when defined(windows):
    switch("passL", "-L" & projectDir() & "\\.. -lsoundio")
