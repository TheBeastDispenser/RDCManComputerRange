param(
[String]$base,
[Int32]$start,
[Int32]$end,
[String]$file,
[String]$help
)
if($help) {
    Write-Host "
    Syntax
    -base <base computer name (without number)>
    -start <starting number in range> 
    -end <ending number in range>
    -file <output path for file (do not include an extension)>"
    return
}

$text = '<?xml version="1.0" encoding="utf-8"?>
<RDCMan programVersion="2.7" schemaVersion="3">
  <file>
    <credentialsProfiles />
    <properties>
      <expanded>True</expanded>
      <name>test</name>
    </properties>';

$text | Set-Content $file -Encoding Default

if ($base) {
    for ($i=$start; $i -le $end; $i++) {
       Write-Host $i;
    "<server>
      <properties>
        <name>" + $base + $i + "</name>
      </properties>
    </server>" | Add-Content $file;
    }
}
else {
    Write-Host "Please specify base string, starting number, ending number, and output file."
    return;
}
'</file>
  <connected />
  <favorites />
  <recentlyUsed />
</RDCMan>'  | Add-Content $file;

Write-Host "RDG file created with range specified.";
