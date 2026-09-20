# Keep a usable evidence package for e-signatures

**Assigned:** Aisha Bello

We capture signatures electronically and store an image. When a signature was
questioned last year, we could not produce the consent disclosure, the
timestamp, or what document version the signer actually saw.

- Store the signed document hash, consent text, timestamp, and IP together
  (documents/e-delivery/capture-electronic-signature.feature.md).
- Link the e-delivery enrollment consent to the same record
  (documents/e-delivery/enroll-in-electronic-delivery.feature.md).
- One export that produces the whole package, for legal, without a ticket.
