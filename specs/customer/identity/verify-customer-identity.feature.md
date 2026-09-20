# Verify Customer Identity

Identity proofing before Acme discloses policy detail or accepts a servicing
change. Step-up verification applies to high-risk changes such as a payee
change or a mailing-address change immediately before a claim payment.

## Deceased insured routes to the estate process @v1 [proposed]

- **Given** a caller reporting that the first named insured is deceased
- **When** the caller cannot complete identity proofing for the insured
- **Then** no policy detail is disclosed
- **And** the file is routed to the estate servicing queue with a request for a death certificate and letters testamentary

## Knowledge-based authentication clears a phone caller @v1 [published]

- **Given** a caller who states the policy number and the first named insured's date of birth
- **When** the caller answers three of four knowledge-based questions correctly
- **Then** the caller is verified at the standard assurance level
- **And** full policy detail including the declarations page may be read out

## Passcode expires after ten minutes @v1 [proposed]

- **Given** a one-time passcode issued at 10:02 AM
- **When** the caller submits the passcode at 10:13 AM
- **Then** the passcode is rejected as expired
- **And** a replacement passcode may be requested at most twice per hour

## Payee change requires step-up verification @v1 [published]

- **Given** a verified caller at the standard assurance level
- **When** the caller requests a change to the claim payment payee
- **Then** a one-time passcode is sent to the mobile number on file as of 30 days ago
- **And** the payee change is held until the passcode is confirmed

## Recently changed mobile number is not trusted @v1 [published]

- **Given** a mobile number added to the account 6 days ago
- **When** a one-time passcode is requested for a step-up verification
- **Then** the passcode is not sent to that number
- **And** the passcode is sent to the email address of record instead

## Two failures lock verification for 24 hours @v1 [published]

- **Given** a caller who has failed knowledge-based authentication once today
- **When** the caller fails a second attempt on the same policy
- **Then** verification is locked on that policy for 24 hours
- **And** the caller is directed to the branch office with a government-issued photo ID
- **And** an SIU referral is raised if a third distinct caller attempts the same policy within the lock window

## Verified identity carries across the same call @v1 [proposed]

- **Given** a caller verified at the step-up level on a personal auto policy
- **When** the call is transferred to the claims unit within the same session
- **Then** the assurance level is carried forward without re-verification
- **And** the transfer and the assurance level are written to the customer contact history
