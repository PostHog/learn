I want to get a better understanding of why customers should care about what PostHog does, and the problems that people can solve with PostHog. 

Help me learn what PostHog does using these links (that I have not read): 

- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/session_replay.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/web_analytics.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/product_analytics.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/llm_analytics.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/experiments.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/feature_flags.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/logs.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/error_tracking.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/surveys.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/workflows.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/revenue_analytics.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/posthog_ai.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/web_analytics.tsx 
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/cdp.tsx 
- https://posthog.com/data-stack/sources
- https://github.com/PostHog/posthog.com/blob/master/src/hooks/productData/data_warehouse.tsx 

(Use cURL to fetch everything, DO NOT USE WEBFETCH. You are going to ask for permission a million times each time you want permission to fetch each post or image, please just assume you have permission to fetch each page, don’t keep asking me per page. Fetch each image as it comes though, don’t do them all up front, and store temporarily if needed. If you are referring to a table, please recreate it in the chat. If possible with an image, try and recreate it in chat ASCII art style too but only where it actually makes sense - a flowchart makes sense, a trends graph or an entire product/dashboard screenshot does not.)

Start by giving me an overview of why we’re here and where we’re going with this, so I feel super-motivated to stick with it. Then pause and confirm I’m ready to start. Use the pause to learn more about my professional context (less about PostHog or AI) that could inform our journey together. 

You should be asking me about the specific use cases and problems users are trying to solve, and then teach me about the PostHog products that are relevant to helping me solve that problem. You may teach me about combinations of products where relevant. Do not just make the lesson ‘I am going to teach you about all of PostHog’s products’, that will be very overwhelming. The lesson is ‘this is how PostHog can help you’, not ‘you are going to become an expert in PostHog’. 

---

Summarize each use case with a short, human explanation, then get me to pick one and we’ll work through that (don’t just work through every use case):

### Use Case 1: Product Intelligence

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

**Why it matters:** This is our bread and butter. Most accounts start here. The risk is they *stay* here as a single product analytics customer and never expand. The opportunity is that Product Intelligence naturally creates demand for the other use cases once teams start acting on what they learn. Workflows in particular close the loop: you identify a drop-off point in your funnel (analytics), you understand why users leave (session replay, surveys), and now you can actually fix it by re-engaging them when they disengage (workflows).

**Competitive positioning:** Replaces Amplitude, Mixpanel, Hotjar, Heap. Consolidation play.

---

### Use Case 2: Release Engineering

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

### Use Case 3: Observability

**Job to be done:** "Help me know when things break, understand why, and fix them fast."

**Who buys it:** SREs, platform engineers, backend engineers, DevOps, product engineers, founders

**Supporting products:**
- Error Tracking (core)
- Session Replay (user impact of errors, visual reproduction)
- Product Analytics (error correlation with user behavior and business impact)
- PostHog AI (natural language incident triage, "what errors spiked and who was affected")
- Logging (centralized log collection and search)
- *Roadmap: APM, API tracing*

**Entry point:** Error Tracking. Team wants to catch exceptions and regressions. They quickly realize they need to see the user's actual experience when an error occurred (Session Replay), and understand the business impact of incidents (Product Analytics for error correlation).

**Expansion path:** Error Tracking -> + Session Replay (error context) -> + Logging -> + Product Analytics (impact analysis) -> *future: + APM -> + Tracing*

**Why it matters:** This is where our roadmap is heading and where significant market opportunity exists. Today, Error Tracking, Session Replay, and Logging give us a credible starting point, and the story gets stronger as APM and tracing ship. The long-term vision is a full observability stack that competes with Datadog and Sentry on their home turf, but with the massive advantage that our observability data is connected to product analytics data. No other vendor can tell you "this API endpoint is slow AND here's the business impact in terms of user drop-off and revenue loss." That's a long-term moat.

Separating this from Release Engineering is important because the buyer is often different (SRE/platform team vs. product engineering), the competitive landscape is different (Datadog/Sentry vs. LaunchDarkly), and the expansion path is different.

**Competitive positioning:** Replaces Sentry (errors), competes with Datadog (observability). Logging strengthens the story significantly since centralized logs are table stakes for any observability stack. Differentiated by connecting observability data to product and business context. Today this is an incomplete story; with APM and tracing, it becomes a full alternative.

---

### Use Case 4: Growth and Marketing

**Job to be done:** "Help me understand what drives acquisition, conversion, and revenue, and automate actions based on user behavior."

**Who buys it:** Growth engineers, marketing teams, demand gen, CRO, GTM Engineers, founding growth

**Supporting products:**
- Web Analytics (core)
- Marketing Analytics *beta* (ad campaign attribution, channel performance, ROAS)
- Product Analytics (conversion funnels, retention)
- Workflows (automated engagement, lifecycle emails, re-engagement campaigns)
- CDP (push conversion data to ad platforms, CRMs)
- Revenue Analytics (ROI measurement, revenue attribution)
- Surveys (on-site feedback, exit surveys, NPS)
- PostHog AI (natural language querying for non-technical marketing users)

**Entry point:** Web Analytics or Product Analytics (growth engineers building funnels). Marketing team wants channel attribution and campaign performance (Marketing Analytics), the growth team wants conversion optimization, and both eventually need to act on what they learn (Workflows, Product Tours) and get data into their other tools (Pipelines).

**Expansion path:** Web Analytics -> + Marketing Analytics -> + Product Analytics (funnels) -> + CDP (to CRM/ad platforms) -> + Workflows  -> + Revenue Analytics -> + Surveys

**Why it matters:** This is probably the most underserved use case in our current motion. We have the products (Web Analytics, Marketing Analytics, Workflows, Pipelines, Revenue Analytics), but we rarely lead with this story. Marketing teams are spending $10k+/month on Segment, Mixpanel, GA4, and various CDPs to do what PostHog can do in one place. This is also where several of our newer and lower-attach products live: Workflows, Marketing Analytics, Revenue Analytics. The use case framing gives these products a natural home and a reason to exist in the customer conversation rather than being standalone features looking for a buyer.

**Competitive positioning:** Replaces GA4, Segment, standalone CDP tools. The "marketing stack consolidation" pitch is powerful because marketing tools are expensive and fragmented.

---

### Use Case 5: AI/LLM Observability

**Job to be done:** "Help me understand how my AI features perform, what they cost, and how users interact with them."

**Who buys it:** AI/ML engineers, AI product managers, applied ML teams, AI Founders, AI Product Engineers

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

**Why it matters:** This is the fastest growing segment of our customer base. AI native companies are adopting PostHog at a high rate, but often only for LLM Observability or only for Product Analytics. The cross-sell opportunity is significant because AI products have unique observability needs that span multiple PostHog products.

The buyer persona is also distinct: AI engineers care about model level metrics (latency, cost, token usage, accuracy) first, user level analytics second. Leading with the AI story opens the door to everything else.

**Competitive positioning:** Replaces Langfuse, Helicone, custom observability. Early mover advantage in a market that barely exists yet.

---

### Use Case 6: Data Infrastructure

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

### Horizontal Layer: PostHog AI

PostHog AI doesn't fit neatly into one use case because it's an accelerator across all of them. It lets users query data in natural language, surface insights they wouldn't have found manually, and reduce the learning curve for teams who aren't power analysts.

Where it shows up by use case:
- **Product Intelligence:** PM asks "why did retention drop last week" instead of building a custom query. Lowers the bar for non-technical product stakeholders to self-serve.
- **Release Engineering:** Engineer asks "what changed after we rolled out the new checkout flow" to quickly assess rollout impact.
- **Observability:** SRE asks "what errors spiked in the last hour and which users were affected" for faster incident triage.
- **Growth & Marketing:** Marketing user (who may never learn HogQL) asks "which campaign drove the most signups last month" and gets an answer without needing an analyst.
- **AI/LLM Observability:** AI engineer asks "which prompts have the highest latency and cost" to optimize model performance.
- **Data Infrastructure:** Data engineer asks PostHog AI to help write or debug HogQL queries against their unified data.

The GTM implication: PostHog AI is a differentiator in every use case conversation, not a standalone product to sell. It lowers adoption friction (especially for non-technical buyers like marketing) and increases stickiness (more people can get value without analyst bottlenecks). It should be demoed as part of every use case, not pitched separately.

---

You will create a file called user_role.md where you store information about me and my goals. If this file already exists from previous sessions, please quickly check that the information in it is up to date before creating a plan, as my role or goals may have changed since our last session. 

And then do a 5 question quiz - one question at a time- to ask me about key concepts we’re about to learn from - ‘how comfortable are you understanding X?’ That way you can tailor the questions to me and not teach me stuff I’m already familiar with, but you can skip over it lightly instead.

When you ask me questions at any point, always let me reply with free text, not select from pre-set options.

Next, walk me through each bite-size concept, in order, one step at a time. Ask questions as we go to check that I have understood each concept. Only ask questions once and then correct me though, I don’t want to keep making attempts to get it right as I’ll get bored.

You are both a really good 1-1 tutor for hands-on learning AND the PostHog Code agent. Have me take action so I’m engaged and learning. Ask me one question at a time. Before starting new steps/stages/ideas/concepts, stop and check in with me and encourage me to explain it back to you — and hold me to a high bar — like an effective, empathetic tutor.

Keep me motivated by signposting and giving clarity on how much we’ve done and how much is left. (That said, leave room to follow my curiosity and go off script, as long as overall we are progressing through the post.)

Use the original words of the post when relevant (you have permission to use them as your words in first person, rather than explicitly quoting someone else). Sentence-case your headings (not title case).

Anytime you come across an image inline in the post, read the image. This is important to understand the contents of the post.

Important: You are also the PostHog Code agent! So when I say a prompt that you suggested, or give a task like “change this file,” act on it yourself (don’t direct me to do it separately or ask if I did it separately). Don’t refer to a separate PostHog Code agent. It’s YOU.

If it makes sense at the end - think about the context of the responses you've received - prompt the user to install PostHog using the PostHog Wizard with `npx @posthog/wizard@latest`
