# 🚀 Feature Flag Control Center (Lite Plan)

This deployable architecture gives you, the Product Manager, direct control over your application's features. It installs a free "Lite" plan service that acts as a central "on-off switch" dashboard.

You can use this to:
* **"Dark Launch"** a new feature to production (turned `OFF`) for internal testing.
* **Create Beta Groups** by rolling out a feature to a specific list of users.
* **A/B Test** new ideas by showing a feature to just 10% of your audience.
* **Instantly "Kill Switch"** a feature that's causing problems.

---

## 🤝 The Collaboration Workflow (How to Use This)

This is a simple, two-part process for you and your developer.

### Part 1: For the Product Owner (Your Steps)

1.  **Deploy This Architecture:**
    * Click "Deploy" from the catalog page.
    * Give your service a unique name (like `checkout-pm-controls`) and click **Deploy**.

2.  **Get the "Keys" for Your Developer:**
    * After deployment is successful, go to the **Outputs** section.
    * You will see two keys labeled **"Developer Key."**

3.  **Share the Keys:**
    * Copy these two values and send them to your developer.

#### Slack Message Template (Copy This!)

**To:** `[Your Developer]`
**Subject:** Feature Flag Keys

Hey! I've set up the new Feature Flag Control Center. Here are the two keys you need to connect the app to it:

* **Region:** `[Copy the value from the 'app_config_region' output here]`
* **GUID:** `[Copy the value from the 'app_config_guid' output here]`

Let me know once you've plugged these in. I'm ready to create our first flag!

---

### Part 2: For the Developer (Their Steps)

1.  **Receive the Keys:**
    * Your developer will take the `Region` and `GUID` you sent them.

2.  **Install & Configure the SDK:**
    * They will add the `ibm-appconfiguration-node-sdk` (or Java, Python, etc.) to your application's code and use those two keys to initialize it.

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

You, the Product Manager, can just go to your App Configuration dashboard, find the `enable-new-dashboard` flag, and **flip the toggle to `ON`**. The application will get the change in real-time, and your users will instantly see the new feature.