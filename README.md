![Status](https://img.shields.io/badge/status-Beta-yellowgreen)

<h1 align="center">Salesforce Azure Dev Ops Demo</h1>
<p align="center"><strong>Laying A Pipeline For The Future</strong></p>

The following repository contains sample code and configuration to run a full end-to-end Salesforce release pipeline using Azure Dev Ops.

This implementation has been based on the great work done by [Stafford Williams](https://staffordwilliams.com/blog/2020/04/01/a-salesforce-pipeline-in-azure-devops-copy/) in his public blog post. This particular implementation relies heavily on [SF Power Scripts](https://sfpowerscripts.com/gettingstarted/), which is handy SFDX cli wrapper specifically attuned to Azure DevOps' lingo.

# Set Up

1. First fork the repo
2. Install [SF Power Scripts extension](https://marketplace.visualstudio.com/items?itemName=AzlamSalam.sfpowerscripts&ssr=false#review-details) into your Azure DevOps instance.
3. Build a new pipeline in Azure DevOps 
4. Connect to your forked repo, and when choosing the project type, point to the yaml file inside
5. Edit the pipeline config and ensure that the tasks you're using are properly aligned
  6. Make sure your pipeline has the variables `SalesforceUsername`, `SalesforcePassword`, and `SalesforceSecurityToken` defined for it.
  7. Ensure that the versions and attributes for each task align with whatever updates have happened on the extension's task APIs.
8. Run the pipeline.

# What It Does

This pipeline is set up to do the following whenever the master branch of the repo is updated:

1. Authenticate with an org
2. Push source from the master branch of the repo to the org
3. Run tests and validate
4. Clean up

# Salesforce 101

Oh, and if you're not familiar with the whole Security Token thing, you can retrieve your Token from the user profile page of your user in the Salesforce org. Alternatively, you can turn off IP protections on the Salesforce side to allow all kinds of willy-nilly madness, but why would you do that?

# To Do

- Create a multi-stage pipeline that includes a sandbox environment
- Run tests in sandbox prior to prod deploy

# Warranties et al.

Made with love. Use with care. No warranties, etc.