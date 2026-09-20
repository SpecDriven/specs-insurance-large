# Fix the order forms appear in the policy packet

**Assigned:** Miguel Santos

Packets assemble forms in whatever order the attachment logic evaluated them,
so the dec page sometimes lands behind two endorsements. Customers call to ask
whether they received the right document.

- A defined section order for the packet, independent of attachment order
  (documents/forms/assemble-policy-packet.feature.md).
- A table of contents with form numbers and edition dates
  (documents/forms/attach-policy-forms.feature.md).
- Reassembling an old packet reproduces the original order and form editions
  (documents/forms/version-policy-form.feature.md).
