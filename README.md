# Salesforce Azure Dev Ops Demo

The following repository contains sample code and configuration to run a full end-to-end Salesforce release pipeline using Azure Dev Ops.

This implementation has been based on the great work done by [Stafford Williams](https://staffordwilliams.com/blog/2020/04/01/a-salesforce-pipeline-in-azure-devops-copy/) in his public blog post. This particular implementation relies heavily on [SF Power Scripts](https://sfpowerscripts.com/gettingstarted/), which is handy SFDX cli wrapper specifically attuned to Azure DevOps' lingo.

# Set Up

1. First fork the repo
2. Install [SF Power Scripts extension](https://marketplace.visualstudio.com/items?itemName=AzlamSalam.sfpowerscripts&ssr=false#review-details) into your Azure DevOps instance.
3. Build a new pipeline in Azure DevOps 
4. Connect to your forked repo, and when choosing the project type, point to the yaml file inside
5. Edit the pipeline config inside AzureDevOps and ensure that the tasks you're using are properly aligned
6. Make sure your pipeline has the variables `SalesforceUsername`, `SalesforcePassword`, and `SalesforceSecurityToken` defined for it.

You can retrieve your security token from the user profile page of your user in the Salesforce org. Alternatively, you can turn off IP protections on the Salesforce side to allow all kinds of willy-nilly madness, but why would you do that?

# To Do

There's a few oustanding to-dos:
- Turn repo into a template

# Warranties et al.

Made with love. Use with care. No warranties, etc.