# Phase 7: Reporting, Dashboards & Security Review


## 1) Why This Phase Matters
- Reports + Dashboards = Storytelling with data.
- Security = Trust + Compliance (must show awareness).
- Strong reports and 1 dashboard.


## 2) Reports to Create
🔹 Report 1: Monthly CO₂ Saved
    - Report Type: Eco Activities with Impact Scores.
    - Group by: Activity Date (Calendar Month).
    - Metric: Sum of CO₂ Saved.
    - Chart: Line Chart.
 👉 Shows sustainability progress over time.

🔹 Report 2: Activity Breakdown by Type
    - Report Type: Eco Activities.
    - Group by: Activity Type (Tree Plantation, Recycling, Awareness Drive).
    - Metric: Count of Activities.
    - Chart: Pie Chart.
 👉 Shows which type of activity is most common.

🔹 Report 3: Top Contributors (Leaderboard)
    - Report Type: Eco Activities with Users.
    - Group by: User.
    - Metric: Sum of CO₂ Saved.
    - Sort: Descending.
    - Chart: Bar Chart.
 👉 Highlights who contributed the most.

🔹 Report 4: Badge Distribution
    - Report Type: Badges with Users.
    - Group by: Badge Level (Bronze, Silver, Gold).
    - Metric: Count of Badges.
    - Chart: Bar Chart (Bronze/Silver/Gold colors).
 👉 Visualizes gamification aspect.

✅ With these 4 reports, I covered time trends, distribution, leaderboard, gamification.


## 3) Dashboard Setup
📍 Create a Dashboard named: “GreenTrack Sustainability Dashboard”
- Add Components:
    - Line Chart – Monthly CO₂ Saved.
    - Pie Chart – Activity Breakdown.
    - Bar Chart – Top 5 Contributors.
    - Bar Chart – Badge Distribution.
- Dashboard Settings:
    - View As: “NGO Manager” (so managers see org-wide data).
    - Refresh: Daily.
    - Add Green/Eco theme color scheme.


## 4) Security Review (Optional)
Data security. In Developer Edition, keeping it simple:
- Field Level Security (FLS):
    - Eco Activity → Only NGO Manager/Admin can see CO₂ impact numbers.
    - Participants see only their own activities.
- Sharing Settings (OWD):
    - Eco Activity: Private.
    - Impact Score: Controlled by Parent (Eco Activity).
    - Badge: Public Read Only.
- Login IP Ranges (Optional):
    - Admin → Restrict by IP range (demo purpose).
    - Audit Trail:
    - Setup → View Audit Trail → Document this screenshot.


## 5) Testing Checklist
- Login as NGO Manager → Dashboard shows org-wide contributions.
- Login as Participant → Only personal activities visible.
- Verify dashboard refresh works.
- Run Audit Trail → See admin actions logged.

