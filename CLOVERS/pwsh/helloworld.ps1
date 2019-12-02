[string]$name = "Benjamin"
[int]$age = 32

if ($age -lt 21) {

    Write-Host "Hello $name. You are $age old! You cannot drink yet friend!" -ForegroundColor Yellow
}
if ($name -eq "Benjamin") {
    Write-Host "$name == Benjamin"
}
Write-Host "You are really old! Please drink responsibly"

# Start of looping code

# Classic C for loop
for ($i = 0; $i -lt 10; $i++) {
    
    Write-Host "Count of i is: $i"
}


# Foreach loop
foreach ($number in 1..10) {
    Write-Host "Count of number is: $number"
}

# While loop
$counter = 0
while ($counter -le 10) {
    Write-Host "Count of counter is: $counter"
    $counter += 2
}