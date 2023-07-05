# **Prerequisites**

## Directory- Tfs-Services

To set up new infrastructure, navigate to the tfs landingzone.

###### 1. Create a resource group by running

       -   cd /tfs-landingzone/resource_group
       -   make apply-{env}-{region_suffix} for each environment. For example: make apply-dev-eu.
       -   Add the resource configuration in tfvars for the respective environment.

       Note: If you are adding a new subscription, you need to update the variables accordingly in the tfvars and Makefile. This may also require changes in the VNet and peering configurations.

###### 2. Create a virtual network (VNet) and workspace.

       -    cd /tfs-landingzone/networking/virtual_network
       -    Run make az-dev, make az-prod, etc. to select the subscription and create the workspace.
       -    terraform workspace new {workspace_name}
       -    make apply-dev-eu (use the corresponding command for other environments)

###### 3. Create peering between virtual networks.

       -    cd /tfs-landingzone/peering
       -    run make apply-{env}-{region_suffix} for each environment. For example: make apply-dev-eu.

###### 4. In the TFS-Landingzone directory, create a private DNS resolver link to connect the VNet with DNS. Run the same command to create the link.

       -    cd /tfs-landingzone/private_dns_resolver_link
       -    run make apply-{env}-{region_suffix} for each environment. For example: make apply-dev-eu.

# **Component creation**

## Directory- Tfs-Services

Navigate to the TFS-Services directory

###### 1. create custom definition for each environment { this is the one time activity for each environment and for both region only one role sholud be create run the command in single region not in both }

       -    cd /tfs-services/custom_roles_definition -- make apply-{env}-eu , apply-{env}-wu

###### 2. create ssh key for each environment

       -    ssh key name should be "tfs-ssh-{env_name}"to deal with errors redarding ssh key not found from portal
       -    example env_name = stg,dev,psr,prod,dev,qa etc

note : if your setuping in infra please check ssh keys are created or not for each environment

###### 3. create default routes

       -    cd /tfs-services/routes
       -    make apply-{env}-{region_suffix}

###### 4. create disk for vm's

       -    cd /tfs-services/component
       -    open disk.json provide the required parameter values
       -    in shell run disk.sh file to create disk
       -    sh disk.sh

###### 5. create tfvars file for respective environment

       -    cd /tfs-services/component
       -    change the parameters of tfvars.json file  example: vm_count ,product,etc
       -    run python script to create tfvars
       -    py tfvars_generate.py

###### 4 .create virtual machine

       -    note: while creating vm in new subscription accept the legal term and condition for rocky linux 9.0
       -    command: az vm image terms accept --publisher erockyenterprisesoftwarefoundationinc1653071250513 --offer rockylinux-9 --plan rockylinux-9.0
       -    cd /tfs-services/component/{product}/{application}
       -    example: cd /tfs-services/component/speech/audio
       -    make apply-{env}-{region_suffix}

###### replaceables:

       -    region_suffix by eu,wu
       -    env by dev,prod,psr,qa,stg etc
       -    product by dsg,speech, etc
       -    application by audio, ccxml, conmtent, etc

# ** setup AAD sh login in windows**

       -    az login // to login azure portal
       -    az account list // to list the all subscriptions in your tenant
       -    az account set --subscription "<subscription ID>" // select the subscription
       -    az extension add --name ssh // for adding the extension if not exist
       -    az network bastion ssh --name "<BastionName>" --resource-group "<ResourceGroupName>" --target-resource-id "<VMResourceId or VMSSInstanceResourceId>" --auth-type   "AAD" // If you’re signing in to an Azure AD login-enabled VM, use the following command
