# 🚀 Feature Flag Control Center

This deployable architecture gives you, the Product Manager, direct control over your application's features. It installs the IBM Cloud App Configuration service, which acts as a central "on-off switch" dashboard.

## ❓ First, Choose Your Plan

This DA offers two "flavors" (versions). You must choose one when you deploy:

1.  **Quickstart (free!)**
    * **What it is:** A 100% free 'Lite' plan.
    * **Use it for:** Development, testing, learning, or internal applications.
    * **Cost: $0.00**

2.  **Production**
    * **What it is:** The paid 'Standard' plan.
    * **Use it for:** Live, customer-facing applications that need full support and high-volume traffic.
    * **Cost: This plan has a cost.** (See the catalog for pricing).

---

## 🤝 The Collaboration Workflow (How to Use This)

This is a simple, two-part process for you and your developer.

### Part 1: For the Product Owner (Your Steps)

1.  **Deploy This Architecture:**
    * From the catalog, select the flavor you need (e.g., **"Quickstart (free!)"**).
    * Give your service a unique name (like `checkout-pm-controls-dev`) and click **Deploy**.

2.  **Get the Dashboard Link & Keys:**
    * After deployment is successful, go to the **Outputs** section.
    * The most important output is the **"Clickable: Your Feature Flag Dashboard"** link.

3.  **Share the Info:**
    * Copy the values for the **Dashboard Link**, **Region**, and **GUID** and send them to your developer.

#### Slack Message Template (Copy This!)

**To:** `[Your Developer]`
**Subject:** Feature Flag Keys

Hey! I've set up the new Feature Flag Control Center.

I deployed the **[Quickstart (free!) OR Production]** flavor. Here is all the info:

* **Dashboard Link (for you & me):** `[Copy the value from the 'dashboard_url' output here]`
* **Region (for your .env):** `[Copy the value from the 'app_config_region' output here]`
* **GUID (for your .env):** `[Copy the value from the 'app_config_guid' output here]`

I'm clicking the dashboard link now to create our first flag. Let me know once you've plugged the Region and GUID into the app!

---

### Part 2: For the Developer (Their Steps)

1.  **Receive the Info:**
    * Your developer will take the `Dashboard Link`, `Region`, and `GUID` you sent them.

2.  **Install & Configure the SDK:**
    * They will add the `ibm-appconfiguration-node-sdk` (or Java, Python, etc.) to your application's code and use the **Region** and **GUID** keys to initialize it.

3.  **"Guard" the New Feature:**
    * Your developer will wrap your new feature's code in a simple "if" statement that asks the service for permission.

    > **Example (what your developer might write):**
    >
    > ```javascript
    > // If the PM turned on this flag...
    > if (appConfigClient.getFeature('enable-new-dashboard').isEnabled()) {
    >   // ...then show the new dashboard code.
    > }
    > ```

### Part 3: The Magic (Working Together)

From this point on, **you no longer need to file a ticket or wait for a code deployment.**

You, the Product Manager, can just click that **`dashboard_url` link** anytime, find the `enable-new-dashboard` flag, and **flip the toggle to `ON`**. The application will get the change in real-time.