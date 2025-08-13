$files = Get-ChildItem -Filter "*.png" | Sort-Object -Descending
$files | ForEach-Object {
    $currentName = $_.Name
    $newNumber = [int]$currentName.Substring(0, 2) + 1
    $newName = "{0:D2}{1}" -f $newNumber, $_.Extension
    Rename-Item -Path $_.FullName -NewName $newName
}