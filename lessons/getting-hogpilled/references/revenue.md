# See the money: Capturing revenue

## Introduction

Either someone has given us money or they have not. Revenue tracking is straightforward — there are two primary approaches.

## Option 1: Manual revenue capture

Place events at your transaction points and capture metadata about each purchase. This gives you full control over what gets tracked.

```javascript
posthog.capture('subscription_purchased', {
    months: 12,
    price: 1999,        // in cents, equivalent to $19.99
    currency: 'USD',    // ISO 4217 currency code
    coupon: 'SUMMER2024',
    product_id: 'prod_1234',
    subscription_id: 'sub_1234'
})
```

Key guidelines:

- **Keep property values numeric** — store prices as integers (cents) to avoid floating-point issues
- **Record details for future flexibility** — capture coupon codes, product IDs, subscription lengths. You'll thank yourself later when you want to analyze revenue by segment
- **Enable historical comparison** — consistent event structures let you compare revenue across time periods

## Option 2: Data warehouse automation

Use PostHog's data warehouse to aggregate multiple data sources automatically. PostHog supports automatic setup for:

- **Stripe** — payment processing data
- **Chargebee** — subscription management data

This approach pulls revenue data directly from your payment provider, so you don't need to instrument every transaction point. But you should still track pre-revenue events (like pricing page views, checkout starts) manually — these give you the full funnel context.

> **Think about yours.** How will you track revenue? Manual capture, data warehouse, or both? What events happen just before someone pays?

## Revenue reporting

### Revenue analytics dashboard

PostHog includes a revenue analytics dashboard that lets you track:

- Revenue over time
- Revenue growth rate
- Customer lifetime value (LTV)

### Custom trend insights

You can also create custom trend insights for revenue:

1. Create a new Trends insight
2. Select your revenue event (e.g., `subscription_purchased`)
3. Aggregate by **sum** on your price property
4. Break down by any dimension you care about (plan type, country, referral source)

## Putting it all together

At this point, you have a complete measurement framework:

```
North Star metric
    |
    v
Events & funnels (metrics tree)
    |
    v
Activation (users getting value)
    |
    v
Retention (users coming back)
    |
    v
Revenue (users paying)
```

Build a dashboard that combines all four layers:
- Active users trend
- Activation funnel conversion
- Retention table
- Revenue trend

This gives you a single view of your product's health from top to bottom.

## What's next

You've now got the full picture. Next steps to explore:

- **Surveys** — ask users why they do (or don't) convert
- **Session replay** — watch real users interact with your product
- **Experiments** — A/B test changes to improve each metric
- **PostHog docs** — deep dives into every feature
