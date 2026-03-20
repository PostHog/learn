# Users getting value: Measuring activation

## Introduction

You've set up PostHog, defined your North Star, and planned your events. Now you need to define and track the behavior that indicates a user is getting genuine value from your product.

This is **activation** — the threshold where users are likely to keep coming back and making progress with your product.

## What is activation?

Activation is the moment a user "gets it." Once someone passes this threshold, they're likely to keep coming back. It's a precursor to revenue: users need to understand your product's value before they'll pay for it.

## Real-world examples

| Product | Activation event |
|---------|-----------------|
| Dropbox | Storing one file within the first week |
| Uber | Taking a first ride |
| Pinterest | Using the product more than 4 days per month |
| PostHog (session replay) | Watching at least 5 replays |

Notice how each activation event is:
- **Specific** — it's a concrete action, not a vague feeling
- **Measurable** — you can track it with an event
- **Predictive** — users who do this tend to stick around

> **Think about yours.** What is the moment a user "gets it" with your product? What action proves they've found value?

## Measuring activation with funnels

Create a funnel insight in PostHog to measure how users progress toward activation.

Example: "Hogflix" (a streaming service) might track these funnel steps:

1. `started_trial` — user begins their free trial
2. `viewed_content` — user watches something
3. `completed_trial` — user finishes the trial period

The funnel shows you:
- What percentage of trial users actually watch content
- What percentage complete the trial
- Where the biggest drop-offs are

## Setting up your activation funnel

To create a funnel insight in PostHog:

1. Go to Insights and create a new insight
2. Select "Funnel" as the insight type
3. Add your activation events as funnel steps
4. Set a relevant time window (e.g., "within 7 days" of the first step)

Look for:
- **Conversion rate** — what percentage of users reach activation?
- **Time to activate** — how long does it take?
- **Drop-off points** — where are you losing people?

## What's next

Once you know whether users are activating, the next question is: are they coming back? That's retention.
