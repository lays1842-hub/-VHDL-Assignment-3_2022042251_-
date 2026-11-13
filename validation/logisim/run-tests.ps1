param(
    [string]$LogisimJar = 'C:/Program Files/logisim-evolution/app/logisim-evolution-5.0.0-all.jar'
)

$ErrorActionPreference = 'Stop'
$project = (Resolve-Path (Join-Path $PSScriptRoot '../..')).Path
$tests = @(
    @('01_rs_latch.circ', 'rs.txt', 'normal'),
    @('02_d_latch.circ', 'd_latch.txt', 'normal'),
    @('03_d_flip_flop.circ', 'd_flip_flop.txt', 'initial-unknown'),
    @('04_jk_flip_flop.circ', 'jk_flip_flop.txt', 'initial-unknown'),
    @('05_dff_async_set_clear.circ', 'dff_async.txt', 'normal')
)

& javac -cp $LogisimJar (Join-Path $PSScriptRoot 'ValidateLogisim.java')
if ($LASTEXITCODE -ne 0) { throw 'Could not compile Logisim test runner.' }
$failed = $false
foreach ($test in $tests) {
    Write-Output "Running $($test[0])"
    & java '-Djava.awt.headless=true' -cp "$PSScriptRoot;$LogisimJar" ValidateLogisim `
        (Join-Path $project "logisim/$($test[0])") (Join-Path $PSScriptRoot $test[1]) $test[2]
    if ($LASTEXITCODE -ne 0) { $failed = $true }
}
if ($failed) { throw 'At least one Logisim test failed.' }
Write-Output 'All five Logisim test sequences passed.'
