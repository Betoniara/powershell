Get-ADComputer -SearchBase 'CN=Computers,DC=domain,DC=local' -Filter '*' | Select -Exp Name | %{Restart-Computer -ComputerName $_.Name -Force -Confirm}

restart-computer (get-content c:\TEST\komp.txt) -Force