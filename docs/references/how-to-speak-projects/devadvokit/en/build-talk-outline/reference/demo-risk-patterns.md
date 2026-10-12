# Demo Risk Patterns

Risk profiles and fallback strategies for common live demo types. Use this to assess each demo described in the Q&A and populate the risk block in the outline.

---

## Risk levels

**Low** — demo can be prepared entirely in advance, has no live dependencies, and will produce the same result every time.
**Medium** — demo has one or two live dependencies that can be mitigated with preparation, but could still fail unexpectedly.
**High** — demo has multiple live dependencies or depends on factors outside the speaker's control.
**Critical** — demo failure would visibly break the talk and cannot be recovered gracefully without a pre-prepared fallback.

Upgrade any demo one level if it has never been run at a public event before.

---

## Demo types and profiles

### Network-dependent demo
Requires an internet connection during the talk. APIs, cloud consoles, hosted services, live data feeds.

**Risk level:** High (upgrade to Critical at events with unreliable venue WiFi)
**Common failure modes:**
- Venue WiFi fails or is throttled
- API rate limit hit during the demo
- Third-party service has an outage
- DNS resolution fails on the conference network
- HTTPS certificate errors on hotel/venue networks (captive portals)

**Mitigations:**
- Use a mobile hotspot as primary connection, not venue WiFi
- Run the demo from a local environment that mirrors the hosted version
- Pre-cache API responses where the service allows it
- Record a full walkthrough the day before as fallback video

**Fallback:** Pre-recorded video of the demo running successfully. This is the only reliable fallback for network-dependent demos — screenshots don't capture the dynamic nature of what you're showing.

---

### Auth-dependent demo
Requires login, API keys, OAuth tokens, or SSO.

**Risk level:** Medium–High
**Common failure modes:**
- Token expired between rehearsal and the talk
- SSO redirects to company identity provider which requires VPN
- Browser has cached credentials that don't work on the venue machine
- 2FA prompt appears mid-demo with no phone to hand
- API key rotated by security policy since last use

**Mitigations:**
- Generate fresh tokens the morning of the talk
- Use a dedicated demo account with no 2FA, or set up app passwords in advance
- Test auth from the exact machine and browser you'll present on
- If using SSO, confirm it works without VPN on external networks

**Fallback:** Pre-recorded video showing auth working. Never attempt to type credentials live — it's slow, anxiety-inducing, and a security risk.

---

### Local tooling demo
Runs entirely on the speaker's machine. CLI tools, local servers, scripts, local build processes.

**Risk level:** Low–Medium
**Common failure modes:**
- Demo machine is different from dev machine (speaker presents from a different laptop)
- Dependencies not installed on the presentation machine
- Port conflicts with other running services
- Demo works on speaker's machine but environment variables aren't set
- Slow machine / long build times that stall the talk

**Mitigations:**
- Use a dedicated demo directory that's self-contained with all dependencies committed
- Run through the demo start-to-finish on the presentation machine at least once
- Pre-start any services that need to be running before the demo begins
- Have a `.env.example` with all required vars, and fill it in before the talk

**Fallback:** Code walkthrough — open the final state of the code in an editor and explain what it does. Works well if the visual output isn't the main point.

---

### Third-party API or service demo
Uses a service the speaker doesn't control — payment APIs, AI APIs, communication APIs, cloud provider consoles.

**Risk level:** Medium–High
**Common failure modes:**
- Service is down or degraded on the day
- API response format changed since the demo was built
- Rate limits hit during the talk
- Pricing tier doesn't support the feature being demoed
- Service requires region-specific setup that doesn't apply at the event location

**Mitigations:**
- Check the service's status page the morning of the talk
- Use a sandbox or test environment where available
- Cache or mock responses for the demo's critical path
- Know the service's status page URL so you can acknowledge an outage credibly if it happens

**Fallback:** Pre-recorded video plus a note to the audience: "APIs have feelings about conference WiFi, so let me show you this recording and then we'll look at the code."

---

### Live coding demo
Writing code in front of the audience in real time.

**Risk level:** Medium (but high visibility — mistakes are very public)
**Common failure modes:**
- Typos that are hard to spot under pressure
- IDE autocomplete suggesting wrong completions
- Forgot where you were after a question from the audience
- Syntax error that's hard to track down quickly
- Font size too small to see from the back of the room

**Mitigations:**
- Use a large font (minimum 24pt, 28pt+ preferred)
- Increase contrast — dark background, light text
- Prepare the starting state in advance; live code only from that known-good point
- Have the finished version in a separate tab or branch as your safety net
- Practice the typing sequence until it's muscle memory

**Fallback:** Show the finished code and walk through it statically. This is always faster and lower risk — use live coding only when the act of writing is itself part of the point.

---

### Infrastructure or deployment demo
Deploying, scaling, or modifying infrastructure live. Kubernetes, cloud deployments, CI/CD pipelines.

**Risk level:** High–Critical
**Common failure modes:**
- Deployment takes longer than expected
- Rollout fails silently and the speaker doesn't notice until later
- Costs start accruing in unexpected ways
- A previous demo run left the environment in a broken state
- Resource limits hit mid-demo

**Mitigations:**
- Use a dedicated demo environment that can be reset to a known state before each run
- Script the reset — a one-command teardown and rebuild
- Set billing alerts or resource limits to prevent runaway costs
- Time the deployment during rehearsal. Build in explicit wait time in the outline.
- Have a "this is what it looks like when it's done" slide ready for the waiting period

**Fallback:** Pre-recorded video of the deployment completing. Show the "before" state live, play the recording for the deployment itself, then return to the live environment to show the result.

---

### Hardware or physical demo
Physical devices, IoT hardware, Bluetooth or USB-connected devices.

**Risk level:** Medium–Critical (depends heavily on the device)
**Common failure modes:**
- Device won't pair on the venue's wireless environment
- Driver issues on a different machine
- Hardware damaged in transit
- Bluetooth interference in a large conference hall
- USB-C adapter compatibility issues with the AV system

**Mitigations:**
- Bring a spare device if possible
- Bring every adapter you might need
- Test the AV connection at the venue before your session if you can
- Pair and configure all devices before going on stage

**Fallback:** Video of the hardware working. Physical demos that fail visibly are uniquely disruptive — a video fallback is non-negotiable for hardware that travels to conferences.

---

## General principles

**The 20% rule:** Whatever time you've allocated to a demo, add 20%. Demos run long. The audience asks questions. Something needs a retry. This is not pessimism — it's calibration.

**One thing at a time:** A demo that tries to show three things will likely show zero of them clearly. Each demo should have one main point.

**Winston's rule:** A demonstration must work even if it fails — the failure itself should teach something. Before any live demo, know what you'll say if it breaks. "This is actually a great example of what happens when..." is a recovery, not an admission of defeat.

**The reset problem:** If you plan to run through the talk more than once (rehearsal, green room run, actual talk), every demo needs a documented reset procedure. Write it down. Automate it if you can.
