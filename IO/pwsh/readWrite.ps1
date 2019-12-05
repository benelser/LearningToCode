# Reads in data each line is type string
$people = Get-Content -Path "./data.csv"
$header = 0
foreach ($p in $people) {
    if ($header -eq 0) {
        $header ++
        continue
    }
    # Split each line into array of strings using "," which is delimeter
    $person = $p.split(",")
    $firstName = $person[0]
    $lastName = $person[1]
    $age = $person[2]

    Write-Host "FN: $firstName LN: $lastName Age: $age"
}

# Even easier is using the Import-Csv CMDlet
$people = Import-Csv -Path "./data.csv"
foreach ($p in $people) {
    # $() is the string expansion function
    "FN: $($p.FName) LN: $($p.LName) Age: $($p.Age)"
}