function Get-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Collections.Hashtable])]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Name,

		[parameter(Mandatory = $true)]
		[ValidateSet("UsedForHDXOnly","Domain","RSA","DomainAndRSA","SMS","GatewayKnows","SmartCard","None")]
		[System.String]
		$LogonType,

		[parameter(Mandatory = $true)]
		[System.String]
		$GatewayUrl,

		[ValidateSet("Present","Absent")]
		[System.String]
		$Ensure
	)

		Import-module Citrix.StoreFront -ErrorAction Stop;

		try {
			$Gateway = Get-STFRoamingGateway
			If ($Gateway) {
				#Convert Arrays to Strings
				$strSTAUrl = ($Gateway.SecureTicketAuthorityUrls) -join (",")
			}
		}
		catch { }

		$returnValue = @{
			Name = [System.String]$Gateway.Name
			LogonType = [System.String]$Gateway.Logon
			SmartCardFallbackLogonType = [System.String]$Gateway.SmartCardFallback
			Version = [System.String]$Gateway.Version
			GatewayUrl = [System.String]$Gateway.Location
			CallbackUrl = [System.String]$Gateway.CallbackUrl
			SessionReliability = [System.Boolean]$Gateway.SessionReliability
			RequestTicketTwoSTAs = [System.Boolean]$Gateway.RequestTicketTwoStas
			SubnetIPAddress = [System.String]$Gateway.IpAddress
			SecureTicketAuthorityUrls = [System.String]$strSTAUrl
			StasUseLoadBalancing = [System.Boolean]$Gateway.StasUseLoadBalancing
			StasBypassDuration = [System.String]$Gateway.StasBypassDuration
			GslbUrl = [System.String]$Gateway.GslbLocation
		}

	$returnValue
}


function Set-TargetResource
{
	[CmdletBinding()]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Name,

		[parameter(Mandatory = $true)]
		[ValidateSet("UsedForHDXOnly","Domain","RSA","DomainAndRSA","SMS","GatewayKnows","SmartCard","None")]
		[System.String]
		$LogonType,

		[System.String]
		$SmartCardFallbackLogonType,

		[System.String]
		$Version,

		[parameter(Mandatory = $true)]
		[System.String]
		$GatewayUrl,

		[System.String]
		$CallbackUrl,

		[System.Boolean]
		$SessionReliability,

		[System.Boolean]
		$RequestTicketTwoSTAs,

		[System.String]
		$SubnetIPAddress,

		[System.String]
		$SecureTicketAuthorityUrls,

		[System.Boolean]
		$StasUseLoadBalancing,

		[System.String]
		$StasBypassDuration,

		[System.String]
		$GslbUrl,

		[ValidateSet("Present","Absent")]
		[System.String]
		$Ensure
)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."

	#Include this line if the resource requires a system reboot.
	#$global:DSCMachineStatus = 1


}


function Test-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Boolean])]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Name,

		[parameter(Mandatory = $true)]
		[ValidateSet("UsedForHDXOnly","Domain","RSA","DomainAndRSA","SMS","GatewayKnows","SmartCard","None")]
		[System.String]
		$LogonType,

		[System.String]
		$SmartCardFallbackLogonType,

		[System.String]
		$Version,

		[parameter(Mandatory = $true)]
		[System.String]
		$GatewayUrl,

		[System.String]
		$CallbackUrl,

		[System.Boolean]
		$SessionReliability,

		[System.Boolean]
		$RequestTicketTwoSTAs,

		[System.String]
		$SubnetIPAddress,

		[System.String]
		$SecureTicketAuthorityUrls,

		[System.Boolean]
		$StasUseLoadBalancing,

		[System.String]
		$StasBypassDuration,

		[System.String]
		$GslbUrl,

		[ValidateSet("Present","Absent")]
		[System.String]
		$Ensure
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."


	<#
	$result = [System.Boolean]
	
	$result
	#>
}


Export-ModuleMember -Function *-TargetResource

