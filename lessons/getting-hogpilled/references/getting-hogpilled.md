# Getting hogpilled: Winning with PostHog

## Introduction

Most startups fail. The ones that win often do it by accident. This guide is about winning on purpose — by measuring the right things from the start.

It all starts with defining a North Star metric.

## Choosing your North Star metric

Your North Star metric should be a precursor to revenue — not revenue itself. It's the single number that best captures the value your product delivers to customers.

Examples:

| Company | North Star metric |
|---------|------------------|
| Facebook | Daily active users |
| Airbnb | Nights booked |
| Uber | Number of rides |

A good North Star metric is:

- **Measurable** — you can track it with data
- **Easy to communicate** — anyone on the team understands it
- **A leading indicator of revenue** — if it goes up, revenue follows

> **Think about yours.** What is the one metric that, if it goes up, means your product is winning?

## Defining your v0 metrics tree

Events influence your North Star metric, feeding your success. You need to identify which events matter most.

Using Uber's ride-sharing as an example, the critical events are:

1. `app_launched`
2. `ride_requested`
3. `ride_accepted`
4. `ride_started`

Each of these events is a step toward the North Star (number of rides). Together, they form a metrics tree — a hierarchy of events that ladder up to your core metric.

> **Think about yours.** What are the 3-5 events that lead to your North Star metric?

## Think about funnels

Funnels measure progress between events. They show you where users move forward — and where they get stuck or abandon your product.

For example, in Uber's funnel:
- How many people who launch the app actually request a ride?
- How many requested rides get accepted?
- How many accepted rides actually start?

Each drop-off is an opportunity to improve. Funnels make these drop-offs visible and measurable.

## Integration planning

Before you start collecting data, you need three things:

1. **What to measure** — the events and properties that matter
2. **Why you're measuring it** — what decisions this data will inform
3. **Which events lead to your desired outcomes** — the path from first touch to North Star

This upfront thinking saves you from drowning in meaningless data later.

## Prioritize growth events

The most important custom event to capture is your signup event. Autocapture won't reliably track signups across UI changes — if you redesign your signup form, autocaptured events break.

Always send a custom event like:

```javascript
posthog.capture('user_signed_up', {
    method: 'google_oauth',
    referral_source: 'blog'
})
```

This gives you a stable, reliable signal regardless of UI changes.

## Avoid event pitfalls

Don't stuff data into event names. For example, avoid naming events like `purchase_shirt_blue_large_29.99`. Instead, use a single event name with properties:

```javascript
posthog.capture('purchase', {
    item: 'shirt',
    color: 'blue',
    size: 'large',
    price: 29.99
})
```

Why? PostHog's event storage is "write only" for all practical purposes. You can't rename events after the fact. Properties give you flexibility to slice and filter data in ways you haven't thought of yet.

## User identity

To connect events to individual users, use PostHog's `identify()` function. This links anonymous activity (before login) with identified activity (after login):

```javascript
posthog.identify('user_123', {
    email: 'user@example.com',
    plan: 'pro'
})
```

Key considerations:

- Call `identify()` after the user authenticates
- Use a stable unique identifier (like a database ID), not something that changes (like an email)
- For cases where the same person has multiple identities (e.g., they signed up twice), use the `alias()` function to merge them

## What's next

With your North Star defined, your events planned, and your identity strategy sorted, you're ready to measure whether users are actually getting value from your product. That's activation — up next.
