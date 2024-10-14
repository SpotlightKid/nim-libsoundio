# To run these tests, simply execute `nimble test`.

import unittest

import soundio

test "libsoundio version":
  check versionString() == "2.0.0"
