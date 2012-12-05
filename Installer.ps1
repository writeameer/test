
# ---------------------------------------------------
# Setup creds using following environment variables
# ---------------------------------------------------

#[Environment]::SetEnvironmentVariable("OH_USERNAME","<user>");
#[Environment]::SetEnvironmentVariable("OH_PASSWORD","<pass>");
#[Environment]::SetEnvironmentVariable("OH_MANAGERIP","<ip>");


# Create new instance of Managed Client Object
$libFileName = Join-Path (Get-Location) "OSSecHub.WindowsAgent.dll"
Add-Type -Path $libFileName 


$managedClient = new-object OSSecHub.WindowsAgent.ManagedClient($null,$null,$null)

# Install Agent from http://www.ossec.net/
$managedClient.InstallAgent();

# Add local agent to manager server
$managedClient.AddAgent();

# Update config file with manager IP
$managedClient.UpdateConfigFile();

# Import authentication key from manager
$managedClient.ImportAuthKey();



