# PostHog use cases

## Use case 1: Product intelligence

**Job to be done:** "Help me understand what users do, why they do it, and what to build next."

**Who buys it:** Product managers, designers, product engineers, UX researchers, founders

**Supporting products:**

- Product Analytics (core)
- Session Replay (qualitative layer)
- Surveys (direct feedback loop)
- Revenue Analytics (business outcome tracking)
- Experiments (validate hypotheses)
- Workflows (onboarding sequences, activation nudges, lifecycle engagement)
- AI Evals (for products with AI features: proactively surface where users are struggling based on AI output quality)
- PostHog AI (natural language querying, insight discovery)

**Entry point:** Usually Product Analytics. Customer starts tracking events, builds dashboards, then realizes they need the *why* behind the numbers (Session Replay), direct user input (Surveys), and the ability to test changes (Experiments). As they mature, Workflows help them act on what they've learned by guiding users through onboarding and driving feature adoption directly inside their product.

**Expansion path:** Analytics only -> + Session Replay -> + Surveys -> + Experiments -> + Revenue Analytics -> + Workflows (act on insights)

**Why it matters:** This is PostHog's bread and butter. Most accounts start here. The risk is they *stay* here as a single product analytics customer and never expand. The opportunity is that Product Intelligence naturally creates demand for the other use cases once teams start acting on what they learn. Workflows in particular close the loop: you identify a drop-off point in your funnel (analytics), you understand why users leave (session replay, surveys), and now you can actually fix it by re-engaging them when they disengage (workflows).

**Competitive positioning:** Replaces Amplitude, Mixpanel, Hotjar, Heap. Consolidation play.

---

## Use case 2: Release engineering

**Job to be done:** "Help me ship faster without breaking things, control who sees what, and validate that changes actually work."

**Who buys it:** Engineering managers, platform teams, individual developers, founders, product engineers, founding PMs

**Supporting products:**

- Feature Flags (core)
- Experiments (A/B testing tied to releases)
- Session Replay (reproduce bugs from user perspective during rollout)
- AI Evals (for products with AI features: detect quality regressions after prompt or model changes)

**Entry point:** Usually Feature Flags. Engineering team wants controlled rollouts, then realizes they need to measure impact (Experiments) and debug user reported issues (Session Replay for reproduction).

**Expansion path:** Feature Flags -> + Experiments -> + Session Replay (for debugging and rollout validation)

**Why it matters:** This is the engineering team's use case, and it's a *different buyer* than Product Intelligence (engineering lead vs. product manager). In most orgs, these are separate budget holders with separate priorities. Selling to engineering unlocks a parallel revenue stream from the same account.

**Competitive positioning:** Replaces LaunchDarkly (flags), standalone experimentation tools. The tight integration between flags and experiments is genuinely differentiated.

---

## Use case 3: Observability

**Job to be done:** "Help me know when things break, understand why, and fix them fast."

**Who buys it:** SREs, platform engineers, backend engineers, DevOps, product engineers, founders

**Supporting products:**

- Error Tracking (core)
- Session Replay (user impact of errors, visual reproduction)
- Product Analytics (error correlation with user behavior and business impact)
- PostHog AI (natural language incident triage, "what errors spiked and who was affected")
- Logging (centralized log collection and search)

**Entry point:** Error Tracking. Team wants to catch exceptions and regressions. They quickly realize they need to see the user's actual experience when an error occurred (Session Replay), and understand the business impact of incidents (Product Analytics for error correlation).

**Expansion path:** Error Tracking -> + Session Replay (error context) -> + Logging -> + Product Analytics (impact analysis)

**Why it matters:** This is where PostHog's roadmap is heading and where significant market opportunity exists. Today, Error Tracking, Session Replay, and Logging give a credible starting point. The long-term vision is a full observability stack that competes with Datadog and Sentry, but with the massive advantage that observability data is connected to product analytics data. No other vendor can tell you "this API endpoint is slow AND here's the business impact in terms of user drop-off and revenue loss."

**Competitive positioning:** Replaces Sentry (errors), competes with Datadog (observability). Logging strengthens the story significantly since centralized logs are table stakes for any observability stack. Differentiated by connecting observability data to product and business context.

---

## Use case 4: Growth and marketing

**Job to be done:** "Help me understand what drives acquisition, conversion, and revenue, and automate actions based on user behavior."

**Who buys it:** Growth engineers, marketing teams, demand gen, CRO, GTM Engineers, founding growth

**Supporting products:**

- Web Analytics (core)
- Marketing Analytics (ad campaign attribution, channel performance, ROAS) *beta*
- Product Analytics (conversion funnels, retention)
- Workflows (automated engagement, lifecycle emails, re-engagement campaigns)
- CDP (push conversion data to ad platforms, CRMs)
- Revenue Analytics (ROI measurement, revenue attribution)
- Surveys (on-site feedback, exit surveys, NPS)
- PostHog AI (natural language querying for non-technical marketing users)

**Entry point:** Web Analytics or Product Analytics (growth engineers building funnels). Marketing team wants channel attribution and campaign performance (Marketing Analytics), the growth team wants conversion optimization, and both eventually need to act on what they learn (Workflows) and get data into their other tools (Pipelines).

**Expansion path:** Web Analytics -> + Marketing Analytics -> + Product Analytics (funnels) -> + CDP (to CRM/ad platforms) -> + Workflows -> + Revenue Analytics -> + Surveys

**Why it matters:** Probably the most underserved use case in PostHog's current motion. The products exist (Web Analytics, Marketing Analytics, Workflows, Pipelines, Revenue Analytics), but PostHog rarely leads with this story. Marketing teams are spending $10k+/month on Segment, Mixpanel, GA4, and various CDPs to do what PostHog can do in one place. This is also where several newer and lower-attach products live. The use case framing gives these products a natural home and a reason to exist in the customer conversation.

**Competitive positioning:** Replaces GA4, Segment, standalone CDP tools. The "marketing stack consolidation" pitch is powerful because marketing tools are expensive and fragmented.

---

## Use case 5: AI/LLM observability

**Job to be done:** "Help me understand how my AI features perform, what they cost, and how users interact with them."

**Who buys it:** AI/ML engineers, AI product managers, applied ML teams, AI founders, AI product engineers

**Supporting products:**

- LLM Observability (core)
- AI Evals (score and evaluate AI outputs, proactively surface quality issues and user struggles)
- Product Analytics (user behavior around AI features)
- Experiments (A/B test prompts, models, parameters)
- Error Tracking (catch model failures, hallucinations, timeouts)
- Session Replay (see the user experience of AI features)
- PostHog AI (query model performance data, cost analysis, latency patterns)

**Entry point:** LLM Observability or Product Analytics. Teams building AI products need to understand model performance, cost per query, latency, and how users actually interact with AI generated output.

**Expansion path:** LLM Observability -> + AI Evals -> + Product Analytics (user behavior) -> + Experiments (prompt/model testing) -> + Error Tracking -> + Session Replay

**Why it matters:** The fastest growing segment of PostHog's customer base. AI native companies are adopting PostHog at a high rate, but often only for LLM Observability or only for Product Analytics. The cross-sell opportunity is significant because AI products have unique observability needs that span multiple PostHog products.

The buyer persona is also distinct: AI engineers care about model level metrics (latency, cost, token usage, accuracy) first, user level analytics second. Leading with the AI story opens the door to everything else.

**Competitive positioning:** Replaces Langfuse, Helicone, custom observability. Early mover advantage in a market that barely exists yet.

---

## Use case 6: Data infrastructure

**Job to be done:** "Help me unify product data with business data and get it where it needs to go."

**Who buys it:** Data engineers, analytics engineers, data team leads, product ops, bizops

**Supporting products:**

- Data Warehouse (core)
- Data Pipelines / Batch Exports (core)
- Product Analytics (query engine for unified data)

**Entry point:** Usually Data Warehouse or Batch Exports. Data team wants to combine PostHog event data with revenue data, CRM data, or other business data. Or they need to export PostHog data to their existing warehouse (Snowflake, BigQuery, Redshift).

**Expansion path:** Batch Exports -> + Data Warehouse (bring external data IN) -> + Product Analytics (query unified data)

**Why it matters:** This is the "stickiness" use case. Once PostHog is part of a company's data infrastructure, receiving data from Stripe, HubSpot, databases AND feeding data out to their BI layer, it becomes very hard to rip out. Data infrastructure customers also tend to have the highest retention rates.

However, this is also the hardest use case to sell into. Data teams are skeptical of analytics tools playing in the data engineering space. Product maturity matters a lot here.

**Competitive positioning:** Partial replacement for Fivetran (inbound syncs), Census/Hightouch (reverse ETL), lightweight warehouse use cases. Not trying to replace Snowflake, but to be the operational analytics layer on top.

---

## Horizontal layer: PostHog AI

PostHog AI doesn't fit neatly into one use case because it's an accelerator across all of them. It lets users query data in natural language, surface insights they wouldn't have found manually, and reduce the learning curve for teams who aren't power analysts.

### Where it shows up by use case

- **Product intelligence:** PM asks "why did retention drop last week" instead of building a custom query. Lowers the bar for non-technical product stakeholders to self-serve.
- **Release engineering:** Engineer asks "what changed after we rolled out the new checkout flow" to quickly assess rollout impact.
- **Observability:** SRE asks "what errors spiked in the last hour and which users were affected" for faster incident triage.
- **Growth and marketing:** Marketing user (who may never learn HogQL) asks "which campaign drove the most signups last month" and gets an answer without needing an analyst.
- **AI/LLM observability:** AI engineer asks "which prompts have the highest latency and cost" to optimize model performance.
- **Data infrastructure:** Data engineer asks PostHog AI to help write or debug HogQL queries against their unified data.

### GTM implication

PostHog AI is a differentiator in every use case conversation, not a standalone product to sell. It lowers adoption friction (especially for non-technical buyers like marketing) and increases stickiness (more people can get value without analyst bottlenecks). It should be demoed as part of every use case, not pitched separately.
