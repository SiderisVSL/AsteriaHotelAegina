# Asteria Boutique Hotel | Booking & Revenue Analysis

A hospitality analytics portfolio project exploring bookings, distribution channels, seasonality, room revenue and guest ratings for a fictional boutique hotel in Aegina, Greece.

**Period:** 1 January 2024 – 31 December 2025  
**Tools:** SQL (Google BigQuery), Tableau Public  
**Data:** Synthetic data used for educational purposes; findings do not describe a real hotel's performance.

[Read the full analysis](Asteria%20Boutique%20Hotel%20%E2%80%A2%20Data%20Analysis.pdf) · [Explore the Tableau visualizations](https://public.tableau.com/app/profile/vasileios.sideris/viz/AsteriaHotelAegina/BookingbyChannel)

## Project objective

Examine how booking channels, travel purpose and seasonal demand relate to hotel performance, then translate the findings into practical recommendations for management.

The workflow covers data quality checks, SQL cleaning, exploratory analysis, Tableau visualizations and written findings.

## Data

| Dataset | Rows | Description |
|---|---:|---|
| `hotel_bookings_raw.csv` | 3,015 | Original booking records, including duplicates and data quality issues |
| `hotel_bookings_clean.csv` | 3,000 | Booking records after deduplication and cleaning |
| `daily_room_inventory.csv` | 2,193 | Daily inventory for three room types across 731 days |

## Data preparation

- Removed 15 duplicate rows while preserving the original booking table.
- Standardized country codes, booking channels and trip-purpose categories.
- Replaced 15 review scores outside the 1–10 range with NULL, preserving existing missing values.
- Corrected room totals overstated by €25 for 15 bookings.
- Accepted documented €0.01 differences as negligible rounding discrepancies.
- Checked inventory for missing values, invalid quantities, duplicate date–room-type combinations and date coverage.

## Key findings

| Metric | Result |
|---|---:|
| Completed bookings | 2,297 (76.57%) |
| Cancelled bookings | 620 (20.67%) |
| No-shows | 83 (2.77%) |
| Total value of completed bookings, including extras | €1,174,537.34 |
| Average completed stay | 3.90 nights |
| Average booking lead time, all statuses | 91.43 days |

- **Booking.com generated the most bookings:** 1,270, or 42.33% of the total. Direct bookings accounted for 925, or 30.83%.
- **Demand was seasonal:** completed booking counts and booking values peaked during June–September in both years.
- **Direct bookings contributed €367,242.12 in completed booking value**, with no recorded booking commissions.
- **Suites had the highest ADR at €202.97**, compared with €117.31 for Double rooms and €75.51 for Single rooms.
- **Guest ratings were similar across room types**, with averages ranging from 8.46 to 8.53 out of 10.

## Selected visualization

![Bookings by channel, 2024–2025](Viusalizations/Booking%20by%20Channel.png)

## Recommendations

1. Test cancellation-policy adjustments and monitor both cancellations and completed stays.
2. Grow direct bookings while comparing acquisition costs with commission savings.
3. Test targeted offers in April, May and October, subject to available capacity.
4. Explore business-travel amenities, particularly for Single-room guests with longer average stays.
5. Use lead-time patterns to inform campaign timing, with further analysis of the distribution before setting fixed schedules.

## Repository guide

- [Booking data quality checks](Data%20Quality%20SQLs%20%28hotel_bookings_raw%29)
- [Inventory data quality checks](Data%20Quality%20SQLs%20%28daily_room_inventory%29)
- [Cleaning scripts](Data%20Cleaning%20SQLs%20%28hotel_bookings_clean%29)
- [Analysis scripts](Data%20Analysis%20SQLs)
- [Original and cleaned datasets](CSVs)
- [Exported Tableau charts](Viusalizations)
- [Packaged Tableau workbook](Book2.twbx)
- [Full project documentation](Asteria%20Boutique%20Hotel%20%E2%80%A2%20Data%20Analysis.pdf)

## Reproducing the analysis

1. Import the two original CSV files into a BigQuery dataset named `Asteria_Boutique_Hotel`, using the table names referenced in the scripts.
2. Run the relevant data quality checks.
3. Run cleaning scripts in numerical order. `DC_001` creates `hotel_bookings_clean`; subsequent scripts update or verify this table.
4. Run the analysis scripts against the cleaned table and inventory table. Script numbering differs from the question numbering in the PDF; use the query contents and report headings to match them.
5. Open `Book2.twbx` in Tableau, or use the Tableau Public link above to explore the published views.

## Interpretation notes

- Most stay and revenue metrics include only **Completed** bookings; channel shares, status rates and overall lead time use all bookings.
- Monthly booking values assign each booking's full value to its **arrival month**, rather than distributing it across stay dates.
- ADR is room revenue divided by sold room nights; it excludes extras and is calculated before commissions.
- Booking value after commissions is **not profit**: operating costs have not been deducted.
- Booking volumes and available room nights alone do not establish occupancy rates. This report does not claim to measure occupancy or RevPAR.
- Review averages exclude NULL scores; missing country values were retained.
- Cancellation and no-show counts do not establish lost revenue, because room resale is not known.

**Author:** Vasileios Sideris
