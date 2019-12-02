function SayHello {
    param (
        [string]$Name,
        [int]$Age
    )

    if ($Age -lt 21) {

        Write-Host "Hello $Name. You are $Age old! You cannot drink yet friend!" -ForegroundColor Yellow
    }
    else{
        Write-Host "You are really old! Please drink responsibly"
    }

}

function Get-Age {
    param (
        [int]$BirthYear
    )
    
    $currentYear = ([DateTime]::Now).Year
    return $currentYear - $BirthYear
}

$bensAge = Get-Age -BirthYear 1987
$bobsAge = Get-Age -BirthYear 1995
$andrewsAge = Get-Age -BirthYear 2010

SayHello -Name "Benjamin" -Age $bensAge
SayHello -Name "Bob" -Age $bobsAge
SayHello -Name "Andrew" -Age $andrewsAge