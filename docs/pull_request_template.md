# Summary
- Replace any and hardcoded types with generics types
- A bit get rid of lodash
- Code refactoring

Fixes [JIRA issue here]
[AMB-11410](https://ambient-ai.atlassian.net/browse/AMB-11410)
---

## How to Test? (Mandatory)

- [ ] Unit tests
- [x] Manual tests
- [ ] Smoke Tests

### Testing Steps

1. Go to Onboarding Page -> Add streamContextStep
2. Open a stream
3. Should words well:
  a. Render doors, zones, threat signatures. Not on every stream we have threat signatures
  b. Changing Regions
  c. Create, update, delete zones and doors
  d. Brush and eraser
---

## Screenshots and Videos (Mandatory)

https://user-images.githubusercontent.com/60894389/209586649-a475eec4-aa51-4de3-9f1f-2d67a30043fb.mov

---
