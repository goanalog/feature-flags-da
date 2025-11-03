{
  "products": [
    {
      "name": "feature-flag-control-center-lite",
      "label": "Feature Flag Control Center",
      "product_kind": "solution",
      "provider_name": "Community",
      "tags": [
        "lite",
        "free",
        "no-cost",
        "devops",
        "feature-flags",
        "pm",
        "agile"
      ],
      "short_description": "Your team's *free* \"on-off switch\" for new features. Safely test, launch, and manage features in real-time on the free 'Lite' plan.",
      "long_description": "Want to launch new features faster, but worried about the risk? This deployable architecture gives you the power of **progressive delivery** at **no cost**. It deploys a **free 'Lite' plan** instance of the IBM Cloud App Configuration service, which provides a powerful dashboard for managing your application's features in real-time—**without needing a new code deployment for every change.**\n\nAs a Product Manager, this gives you direct control. This DA deploys the **free \"Lite\" plan** of the service. It's perfect for development, testing, internal applications, or getting started with feature flags at **no cost**.",
      "features": [
        {
          "title": "✅ No-Cost 'Lite' Plan",
          "description": "This architecture deploys the 'Lite' plan, which is completely free. Perfect for dev/test, learning, and internal apps."
        },
        {
          "title": "Centralized PM Dashboard",
          "description": "A simple, web-based UI for you to manage all your features. No code required for you to make a change."
        },
        {
          "title": "Controlled Rollouts",
          "description": "Safely test new features with a small percentage of users (e.g., \"roll out to 5% of users\") before a full launch."
        },
        {
          "title": "Instant 'Kill Switch'",
          "description": "Instantly turn off a problematic feature without waiting for a developer or a hotfix."
        }
      ],
      "flavors": [
        {
          "name": "default",
          "label": "Default",
          "version": "1.0.0",
          "architecture": {
            "provision_type": "terraform_v1",
            "configuration": [
              {
                "key": "service_name",
                "label": "Service Name (for your dashboard)",
                "type": "string",
                "default_value": "my-feature-flag-service",
                "description": "Give it a name related to your team or product, like 'checkout-pm-controls'.",
                "required": true
              },
              {
                "key": "region",
                "label": "Region (Deployment Location)",
                "type": "string",
                "default_value": "us-south",
                "description": "Leave this as the default ('us-south') unless your development team tells you otherwise."
              },
              {
                "key": "resource_group_name",
                "label": "Resource Group (Account Folder)",
                "type": "string",
                "default_value": "Default",
                "description": "You can safely leave this as 'Default'."
              }
            ],
            "outputs": [
              {
                "key": "dashboard_url",
                "label": "Clickable: Your Feature Flag Dashboard",
                "description": "➡️ **Click this link.** This is your new dashboard to create and manage flags.",
                "type": "url",
                "primary": true
              },
              {
                "key": "app_config_region",
                "label": "Developer Key: Region",
                "description": "✅ **Copy this for your developer.** This is the 'address' of the service."
              },
              {
                "key": "app_config_guid",
                "label": "Developer Key: GUID",
                "description": "✅ **Copy this for your developer.** This is the unique 'password' for the service."
              },
              {
                "key": "app_config_instance_name",
                "label": "Your Dashboard Name (for reference)",
                "description": "This is just for you. It's the name you chose, to help you find it in your resource list."
              }
            ]
          }
        }
      ]
    }
  ]
}