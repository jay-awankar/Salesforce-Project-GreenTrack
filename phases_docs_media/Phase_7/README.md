
# Phase 7: Integration & External Access (Optional)


## 1) Why Integration Matters
In GreenTrack, integration could:
- Fetch carbon footprint conversion rates from an external API.
- Allow data sharing with NGO websites.
- Send real-time notifications to collaboration tools (Slack, Teams).


## 2) Named Credentials (Best Practice for Secure Callouts)
Purpose: Store API URL + authentication securely.
- Setup → Quick Find → Named Credentials → New.
- Example:
    - Label: CarbonAPI
    - URL: https://api.carboninterface.com
    - Identity Type: Anonymous (for demo)
    - This ensures hard-code URLs in Apex aren't required.


## 3) Remote Site Settings (Mandatory for Callouts)
Salesforce blocks external calls unless the endpoint is whitelisted.
- Setup → Quick Find → Remote Site Settings → New.
    - Remote Site Name: CarbonAPI_Site
    - Remote Site URL: https://api.carboninterface.com


## 5) Platform Events (Optional)
Simulate real-time notifications (e.g., large eco activity triggers an event).
- Setup → Platform Events → New.
    - Example: Sustainability_Event__e with fields (Activity, CO₂ Saved, User).
    - Trigger → When activity > 1000 CO₂ saved → Publish event.


## 6) OAuth & Authentication (Mention for Docs)
- If a real API requires login, will configure OAuth under Named Credentials.
- Considered OAuth but kept integration simple for demo.
