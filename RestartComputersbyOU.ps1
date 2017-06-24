#RestartComputersbyOU.ps1
Import-Module ActiveDirectory
$ou = "CN=Computers,DC=domain,DC=local"
$computers = Get-ADComputer -Filter * -SearchBase $ou
ForEach ( $c in $computers ) {
	Restart-Computer -ComputerName $c.name -Force
}