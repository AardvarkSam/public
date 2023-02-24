# In order for this to work, the testfile needs to be reachable.
# if the test is to be done on a on-premise network, simply create a file wit this command in the desired location:
# fsutil file createnew .\100mb-testfile.txt 104857600
#OR
# fsutil file createnew \\path-to-remote-computer-in-your-network\Test\100mb-testfile.txt 104857600

Function Measure-NetworkSpeed-Internal{
    # The test file has to be a 10MB file for the math to work. If you want to change sizes, modify the math to match
    $TestFile  = '\\PC-XY\Test\100mb-testfile.txt'
    $TempFile  = Join-Path -Path $env:TEMP -ChildPath 'testfile.tmp'
    $WebClient = New-Object Net.WebClient
    $TimeTaken = Measure-Command { $WebClient.DownloadFile($TestFile,$TempFile) } | Select-Object -ExpandProperty TotalSeconds
    $SpeedMbps = (100 / $TimeTaken) * 8
    $Message = "{0:N2} Mbit/sec" -f ($SpeedMbps)
    $Message
}

# Can also be done with a remote computer like so:
Function Measure-NetworkSpeed-External{
    # The test file has to be a 10MB file for the math to work. If you want to change sizes, modify the math to match
    $TestFile  = 'https://ftp.sunet.se/mirror/parrotsec.org/parrot/misc/10MB.bin'
    $TempFile  = Join-Path -Path $env:TEMP -ChildPath 'testfile.tmp'
    $WebClient = New-Object Net.WebClient
    $TimeTaken = Measure-Command { $WebClient.DownloadFile($TestFile,$TempFile) } | Select-Object -ExpandProperty TotalSeconds
    $SpeedMbps = (10 / $TimeTaken) * 8
    $Message = "{0:N2} Mbit/sec" -f ($SpeedMbps)
    $Message
}

Measure-NetworkSpeed
