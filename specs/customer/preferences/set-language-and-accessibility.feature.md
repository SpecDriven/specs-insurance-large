# Set Language and Accessibility Preferences

Language and accessible-format elections for policyholder correspondence.
Acme files translated forms in states that require them; where no filed
translation exists, the English form of record controls.

**Assigned:** Aisha Bello

## Braille request extends the mailing lead time @v1 [proposed]

- **Given** an insured enrolled for Braille embossing
- **When** a renewal offer must reach the insured 30 days before the effective date
- **Then** the document is released to the Braille vendor 10 business days earlier than standard print
- **And** the renewal timeline is recalculated so the statutory notice period is still met

## Language election does not follow a policy transfer @v1 [proposed]

- **Given** an insured with a Spanish election on a personal auto policy
- **When** the policy is transferred to a new named insured
- **Then** the new named insured starts at the account default language
- **And** the prior election is retained on the original customer record only

## Large-print declarations page @v1 [published]

- **Given** an insured who requests an accessible format
- **When** the insured selects 18-point large print
- **Then** the declarations page is rendered at 18 points with a minimum 4.5:1 contrast ratio
- **And** the page count increase does not change the postage class

## No filed translation falls back to English @v1 [published]

- **Given** an insured who elects Vietnamese on an umbrella policy
- **When** the renewal offer is produced and no Vietnamese translation of form UMB-300 is filed
- **Then** the renewal offer is produced in English
- **And** a Vietnamese cover letter directing the insured to the language line is enclosed

## Screen-reader tagging on the electronic declarations page @v1 [proposed]

- **Given** an insured on paperless delivery with the screen-reader flag set
- **When** the declarations PDF is generated
- **Then** the PDF is tagged with a reading order, a document title, and alternative text on the logo
- **And** premium tables are tagged as data tables with header scope

## Spanish election switches servicing correspondence @v1 [published]

- **Given** a California auto policy with a filed Spanish translation of form AA-1001
- **When** the insured elects Spanish as the correspondence language
- **Then** billing statements and claim acknowledgements are produced in Spanish
- **And** the declarations page carries the notice that the English form of record controls
