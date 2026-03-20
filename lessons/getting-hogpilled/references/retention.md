# Keeping users around: Measuring retention

## Introduction

Activation tells you whether users get value. Retention tells you whether they keep getting value. The lower your product's retention, the more you have to keep acquiring new customers — which gets expensive fast.

## What is retention?

Retention measures how well your product keeps customers returning over time. It answers the question: of the people who did X, how many came back and did Y?

## Real-world examples

Retention looks different for every product:

| Product | What "retained" means |
|---------|----------------------|
| Instagram | Multiple visits within a few days |
| Uber | Three rides per month |

The standard varies significantly by product type. A tax preparation app might have great retention at once per year. A social media app needs daily visits.

> **Think about yours.** What does "coming back" look like for your product? How often should a healthy user return?

## Setting up retention in PostHog

PostHog's retention insight requires three components:

1. **Baseline event** — the starting action (e.g., signup, activation event)
2. **Retention event** — the action that indicates return (e.g., pageview, core action)
3. **Timeframe** — the granularity of measurement (hours, days, weeks, months)

## Reading the retention table

The retention table shows cohorts over time:

- **Day 0** represents 100% — all users who performed the baseline event
- **Subsequent columns** show the percentage of those users who came back and performed the retention event
- **Dotted lines** indicate incomplete periods (not enough time has passed to measure)

Example:

| Cohort date | Day 0 | Day 1 | Day 2 | Day 3 | Day 7 | Day 14 |
|-------------|-------|-------|-------|-------|-------|--------|
| Jan 22 | 100% | 32% | 28% | 25% | 18% | 12% |
| Jan 23 | 100% | 35% | 30% | 27% | 20% | ... |
| Jan 24 | 100% | 33% | 29% | ... | ... | ... |

## What to look for

The key signal is a **flat retention curve**. If your retention percentage stabilizes (stops dropping) after a certain period, that's a sign of product stickiness — you've found a group of users who genuinely value your product.

If retention keeps declining toward zero, you have a leaky bucket. No amount of acquisition will fix that.

> **Think about yours.** What is your baseline event? What is your retention event? What timeframe makes sense for your product?

## What's next

If users are activating and retaining, you're ready to track the ultimate metric: revenue.
