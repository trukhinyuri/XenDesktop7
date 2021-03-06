## XD7StoreFrontFarmConfiguration

Sets the StoreFront farm configuration settings.

### Syntax

```
XD7StoreFrontFarmConfiguration [string]
{
    StoreName = [String]
    [ EnableFileTypeAssociation = [Boolean] ]
    [ CommunicationTimeout = [String] ]
    [ ConnectionTimeout = [String] ]
    [ LeasingStatusExpiryFailed = [String] ]
    [ LeasingStatusExpiryLeasing = [String] ]
    [ LeasingStatusExpiryPending = [String] ]
    [ PooledSockets = [Boolean] ]
    [ ServerCommunicationAttempts = [UInt32] ]
    [ BackgroundHealthCheckPollingPeriod = [String] ]
    [ AdvancedHealthCheck = [Boolean] ]
}
```

### Properties

* **StoreName**: StoreFront store name.
* **EnableFileTypeAssociation**: Enable file type association.
* **CommunicationTimeout**: Communication timeout when using to the Xml service in seconds.
* **ConnectionTimeout**: Connection timeout when connecting to the Xml service in seconds.
* **LeasingStatusExpiryFailed**: Period of time before retrying a XenDesktop 7 and greater farm in failed leasing mode in seconds.
* **LeasingStatusExpiryLeasing**: Period of time before retrying a XenDesktop 7 and greater farm in leasing mode in seconds.
* **LeasingStatusExpiryPending**: Period of time before retrying a XenDesktop 7 and greater farm pending leasing mode in seconds.
* **PooledSockets**: Use pooled sockets.
* **ServerCommunicationAttempts**: Number of server connection attempts before failing.
* **BackgroundHealthCheckPollingPeriod**: Period of time between polling XenApp or XenDesktop server health in seconds.
* **AdvancedHealthCheck**: Indicates whether an advanced health-check should be performed.

### Configuration

```
Configuration XD7Example {
    Import-DscResource -ModuleName XenDesktop7
    XD7StoreFrontFarmConfiguration XD7StoreFrontFarmConfigurationExample {
        StoreName = 'mock'
        PooledSockets = $true
    }
}

```
