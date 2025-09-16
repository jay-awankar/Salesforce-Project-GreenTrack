# Phase 2: Org Setup & Configuration

## 1. Salesforce Edition Setup
- Using Salesforce Developer Edition (free, suitable for capstone projects).
- Org named “GreenTrack Sustainability Portal”.

## 2. Company Profile Setup
- Company Info: GreenTrack | Industry: Environmental Sustainability.
- Locale Settings: Default to India (GMT +5:30, INR currency).
- Business Hours & Holidays:
    Business hours: 9 AM – 6 PM (for activity/event scheduling).
    Holidays: Added national holidays to simulate event blackout dates.
- <img src="Company_Info_Setup.png" alt="Company_Info_Setup" width=50% />

## 3. Fiscal Year Settings
- Standard fiscal year setup → Jan–Dec.
- Activities & CO₂ impact will be tracked quarterly and yearly.
- <img src="Fiscal_Year_Setup.png" alt="Fiscal_Year_Setup.png" width=50% />

## 4. User Setup & Licenses
- Profiles Created:
- System Admin (default).
- <img src="Admin_Setup.png" alt="Admin_Setup" width=50% />
- NGO Manager Profile → Manage activities & dashboards.
- <img src="Manager_Setup.png" alt="Manager_Setup" width=50% />
- Participant Profile → Log activities, view own impact.
- <img src="Participant1-Setup.png" alt="Participant1-Setup" width=50% />
- Licenses Assigned: Salesforce Platform license for non-admin users.

## 5. Roles & Hierarchy
- Admin (highest) <br>
    ↳ NGO Manager <br>
    ↳ Participants
<img src="https://github.com/jay-awankar/Salesforce-Project-GreenTrack/blob/main/assets/Role_Hierarchy.svg" alt="role_hierarchy_img" width=500 />

- Ensures data visibility rolls up for monitoring but stays restricted at participant level.
- <img src="Roles_Setup.png" alt="Roles_Setup" width=50% />
- <img src="Assign_Roles.png" alt="Assign_Roles" width=50% />

## 6. Permission Sets
- Badge Assignment Access → Grants managers ability to update badges.
- <img src="PermissionSet_1.png" alt="PermissionSet_1" width=50% />
- Dashboard Viewer → Grants participants access to view sustainability dashboards.
- <img src="PermissionSet_2.png" alt="PermissionSet_2" width=50% />

## 7. Security Settings (OWD & Sharing Rules)
- OWD (Organization-Wide Defaults):
- <img src="Sharing_Settings.png" alt="Sharing_Settings" width=50% />
- Eco Activities → Public Read/Write (anyone can log activities).
- Impact Scores → Private (only user & managers can see).
- Badges → Read-only for participants, editable by managers.
- Sharing Rules:
    Allow NGO Managers to see all participant activities.
- <img src="Sharing_Rule.png" alt="Sharing_Rule" width=50% />

## 8. Login Access Policies
- IP ranges restricted to simulate internal org use.
- Session timeout set to 1 hour for security.
- <img src="Session_Settings.png" alt="Session_Settings" width=50% />

## 9. Admin email & case setup (notifications)
- Why: flows/alerts will send emails — ensure sender addresses exist.
- <img src="Organization-Wide-Addresses(Support).png" alt="Organization-Wide-Addresses(Support)" width=50% />

## 10. App Shell (create a Lightning App for GreenTrack)
- Isolates the project in the App Launcher.
- Gives a nice demo experience.
- <img src="New-Lighting-App.png" alt="New-Lighting-App" width=50% />

## 11. Dev Org Setup & Sandbox Usage
- Primary development in Developer Org.
- (Optional) Sandbox for testing advanced automation before final deployment.

## 12. Deployment Basics
- Change Sets prepared for future migration (Flows, Objects, Dashboards).
- Version control with GitHub repository (docs + metadata).
