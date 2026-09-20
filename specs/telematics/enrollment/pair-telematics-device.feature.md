# Pair a Telematics Device

A driver collects trips through the mobile app, a plug-in OBD-II dongle, or a
connected-car data feed from the manufacturer. Each vehicle must be paired to
exactly one collection source.

## Connected-car feed replaces a shipped device @v1 [published]

- **Given** an enrolled 2024 vehicle whose manufacturer offers a connected-car data feed
- **When** the insured authorizes the feed
- **Then** the manufacturer feed becomes the collection source
- **And** any pending dongle shipment is cancelled

## Dongle reports against the wrong vehicle @v1 [published]

- **Given** a paired dongle whose transmitted VIN no longer matches the vehicle on the policy
- **When** the mismatch is detected on three consecutive trips
- **Then** collection for that vehicle is suspended
- **And** the insured is asked to confirm which vehicle the device is installed in

## Mobile app pairing completes on the first qualifying trip @v1 [published]

- **Given** an enrolled driver who has installed the DriveRight app
- **When** the app records a trip of at least 2 miles with the vehicle identified
- **Then** the vehicle is marked paired
- **And** the pairing date is stored on the enrollment record

## OBD-II dongle is shipped and activated @v1 [published]

- **Given** an enrolled vehicle of model year 2008 or newer
- **When** the dongle is requested
- **Then** a dongle is shipped to the mailing address on the declarations page
- **And** the device serial is bound to the vehicle identification number on first transmission

## Pairing deadline expires without a qualifying trip @v1 [proposed]

- **Given** an enrollment 21 days old with no trips recorded
- **And** the pairing deadline is 21 days
- **When** the deadline check runs
- **Then** the participation discount is removed at the next renewal
- **And** a reminder with setup instructions is sent to the insured

## Vehicle removed from the policy releases its device @v1 [proposed]

- **Given** a paired vehicle sold and removed by endorsement
- **When** the endorsement is processed
- **Then** the pairing is closed with reason "vehicle removed"
- **And** a prepaid return label is issued for a shipped dongle
