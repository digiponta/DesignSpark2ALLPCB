<# Under construction:
NOTE: You may need to execute "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine"
(C) 2021, DIGI-P, NERD.JP
#>

$result_gbr = (Get-ChildItem *.gbr).BaseName
$result_drl = (Get-ChildItem *.drl).BaseName

# Top Layer: "filename.GTL" from "filename - Top Copper.gbr"
$gtl_org = ($result_gbr | Where-Object { $_ + ".gbr" -like "* - Top Copper.gbr*" }) + ".gbr"
$gtl_new = $gtl_org -replace ' - Top Copper.gbr','.gtl'

$pcbname = $gtl_org -replace ' - Top Copper.gbr', ''
$topdir = "C:\ALLPCB\" + $pcbname 
mkdir -Force $topdir

if (Test-Path $gtl_org) {
  $gtl_new = $topdir + "\" + $gtl_new 
  Copy-Item $gtl_org $gtl_new
} else {
echo "no Top Copper" 
}

# Top Solder Mask: "filename.GTS" from "filename - Top Copper (Resist).gbr"
$gts_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Top Copper (Resist).gbr*" }) + ".gbr"
if (Test-Path $gts_org) {
$gts_new = $topdir + "\" + $gts_org -replace ' - Top Copper \(Resist\).gbr','.gts'
Copy-Item $gts_org $gts_new
} else {
echo "not Top Copper (Resist)"
}

# Top Silkscreen: "filename.GTO" from "filename - Top Silkscreen.gbr"
$gto_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Top Silkscreen.gbr*" }) + ".gbr"
if (Test-Path $gto_org) {
$gto_new = $topdir + "\" + $gto_org -replace ' - Top Silkscreen.gbr','.gto'
Copy-Item $gto_org $gto_new 
} else {
echo "no Top Silkscreen"
}

# Bottom Layer: "filename.GBL" from "filename - Bottom Copper.gbr"
$gbl_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Bottom Copper.gbr*" }) + ".gbr"
if (Test-Path $gbl_org) {
$gtl_new = $topdir + "\" + $gbl_org -replace ' - Bottom Copper.gbr','.gbl'
Copy-Item $gbl_org $gtl_new 
} else {
echo "no Bottom Copper"
}

# Bottom Solder Mask: "filename.GBS" from "filename - Bottom Copper (Resist).gbr"
$gbl_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Bottom Copper (Resist).gbr*" }) + ".gbr"
if (Test-Path $gbl_org) {
$gbl_new = $topdir + "\" + $gbl_org -replace ' - Bottom Copper \(Resist\).gbr','.gbs'
Copy-Item $gbl_org $gbl_new 
} else {
echo "no Bottom Copper (Resist)"
}

# Bottom Silk Screen: "filename.GBO" from "filename - Bottom Silkscreen.gbr"
$gbo_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Bottom Silkscreen.gbr*" }) + ".gbr"
if (Test-Path $gbo_org) {
$gbo_new = $topdir + "\" + $gbo_org -replace ' - Bottom Silkscreen.gbr','.gbo'
Copy-Item $gbo_org $gbo_new 
} else {
echo "no Bottom Silk Screen"
}

# Board Outline: "filename.GKO" from "filename - Board Outline.gbr"
$gko_org = ($result_gbr | Where-Object { $_ + ".gbr"  -like "* - Board Outline.gbr*" }) + ".gbr"
if (Test-Path $gko_org) {
$gko_new = $topdir + "\" + $gko_org -replace ' - Board Outline.gbr','.gko'
Copy-Item $gko_org $gko_new 
} else {
echo "no Board Outline"
}

# Drills: "filename.TXT" from "filename - Drill Data - [Through Hole].drl"
$drl_org = ($result_drl | Where-Object { $_ + ".drl"  -like "* - Drill Data - ``[Through Hole``].drl*" }) + ".drl"
if (Test-Path *.drl) {
$drl_new = $topdir + "\" + $drl_org -replace " - Drill Data - \[Through Hole\].drl",".txt"
Copy-Item *.drl $drl_new 
} else {
echo "no Drill Data - [Through Hole]"
}

