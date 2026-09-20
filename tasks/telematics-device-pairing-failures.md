# Instrument telematics pairing failures

**Assigned:** Jonas Berg

Roughly a fifth of enrollments never produce a trip, and we do not know why
because pairing failures are not recorded anywhere. Support handles each one
as a novel problem over the phone.

- Log pairing attempts and their failure reason by device type
  (telematics/enrollment/pair-telematics-device.feature.md).
- An enrollment with no trips after a set period prompts the driver rather
  than quietly expiring
  (telematics/enrollment/enroll-in-telematics-program.feature.md).
- Distinguish a failed pairing from genuinely thin driving data
  (telematics/scoring/handle-insufficient-trip-data.feature.md).
