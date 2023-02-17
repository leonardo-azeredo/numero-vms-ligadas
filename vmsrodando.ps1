$vms = Get-AzVM -Status 
$rodando = $vms | Where-Object { $_.PowerState -eq "VM running" }
$rodandonome = $rodando | Select-Object -ExpandProperty Name
$contadorodando = $rodando.Count
Write-Output "O número de VM ligadas são: $contadorodando " " As máquinas ligadas são:" $rodandonome