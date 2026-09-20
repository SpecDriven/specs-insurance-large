# Request Proof of Insurance ID Card

Issues auto insurance identification cards on demand, in the format each
state accepts, for the vehicles on an in-force policy.

[Jira:CLM-604](https://jira.com/CLM-604)

## Card is not issued on a lapsed policy @v1 [proposed]

- **Given** a policy cancelled for nonpayment 2 days ago
- **When** the insured requests an ID card
- **Then** no card is issued
- **And** the insured is shown the amount and deadline required to reinstate coverage

## Card reflects SR-22 filing status @v1 [proposed]

- **Given** a policy with an active SR-22 financial responsibility filing
- **When** the ID card is generated
- **Then** the card notes that a filing is on record with the state
- **And** the card itself does not substitute for the state's filing confirmation

## Download an ID card for an in-force vehicle @v1 [published]

- **Given** an in-force auto policy listing a 2022 Subaru Outback
- **When** the insured requests an ID card from the portal
- **Then** a PDF card is generated showing the policy number, term dates, VIN, and named insured
- **And** the card is available immediately without a service representative

## Electronic ID cards are refused where not accepted @v1 [published]

- **Given** a policy garaged in a state that does not accept electronic proof of insurance
- **When** the insured requests a card to their mobile wallet
- **Then** the electronic option is unavailable and the reason is explained
- **And** a printable PDF and a mailed card are offered instead

## Mailed card request is rate limited @v1 [proposed]

- **Given** an insured who has requested mailed ID cards twice in the past 30 days
- **When** a third mailed request is submitted
- **Then** the mailed request is declined and the download option is offered
- **And** a representative may override the limit with a documented reason

## Newly added vehicle produces an interim card @v1 [published]

- **Given** an endorsement adding a vehicle effective today
- **When** the endorsement is processed
- **Then** an interim ID card for the new vehicle is available within 15 minutes
- **And** permanent cards for all vehicles are mailed with the amended declarations page
