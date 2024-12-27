$packages = @(
“Пакет1”
“Пакет2”
“ПакетХ”
)

ForEach ($packages in $packages) {
Get-AppxPackage -Name $packages -AllUsers | Remove-AppxPackage

 Get-AppXProvisionedPackage -Online |
    where DisplayName -EQ $packages |
    Remove-AppxProvisionedPackage -Online
}
