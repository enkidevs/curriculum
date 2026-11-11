---
author: enki-ai

type: normal

category: discussion

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: "Conclude only what the code shows: a second call reaches another insert."
    requiredConcepts:
      - It attempts another credit insert (no early return).
    acceptedAnswers:
      - It runs the insert again.
      - A second credit insert is attempted.
      - Nothing checks used, so it inserts again.
    hints:
      - Is there any check for a used coupon?
      - What line runs next?
    tooVagueExamples:
      - It might fail.
      - Something happens.
    incorrectExamples:
      - It safely does nothing.
      - It throws because the coupon is used.
---

# Independent Review Judgment

---
## Content

When a pull request touches code you don't know, asking an assistant how it works can teach you a lot. Any verdict it slips into the answer still needs checking before it becomes yours.

Say the PR makes invite resends fire-and-forget, and you ask how the invite flow works. The answer includes a useful pointer and an unsupported verdict:

```plain-text
Making the resend fire-and-forget is safe here, because accepting an
invite is idempotent: acceptInvite() in services/invites.js no-ops if
the invite is already accepted.
```

Here's the function it points to:

```javascript
export async function acceptInvite(inviteId, userId) {
  const invite = await db.invites.find(inviteId);
  await db.members.insert({ orgId: invite.orgId, userId });
  await db.invites.update(inviteId, { status: "accepted" });
}
```

It doesn't no-op. A second call inserts another member row. Whether that creates a duplicate or raises an error depends on database constraints, so check those next.

The assistant's explanation still helped you find the code that decides it.

**Your review judgment comes from that code, the schema, and a test that accepts an invite twice.**

---
## Practice

An assistant says `refund()` is safe to retry, citing a check for an existing refund. Treat that as ???.

- a lead to verify
- the review verdict
- proof it's safe
- your comment text

---
## Revision

```javascript
export async function redeemCoupon(code, userId) {
  const coupon = await db.coupons.find(code);
  await db.credits.insert({ userId, amount: coupon.value });
  await db.coupons.update(code, { used: true });
}
```

An assistant says a second call safely does nothing. From this code alone, what happens?

???

- It inserts the credit again; nothing checks `used` first.
