# Function to block outbound connections to TCP port 80 using Windows Firewall
function BlockOutboundPort80 {
    $ruleName = "BlockOutboundPort80"

    New-NetFirewallRule -Name $ruleName -Action Block -Direction Outbound -Protocol TCP -LocalPort 80

    Write-Host "Outbound connections to TCP port 80 are blocked."
}

# Example usage:
BlockOutboundPort80
