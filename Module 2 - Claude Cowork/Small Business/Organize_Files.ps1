# Organize Small Business folder into Receipts, Invoices, Agreements
# Run this from the Small Business folder:  powershell -ExecutionPolicy Bypass -File .\Organize_Files.ps1

$root = $PSScriptRoot

# Create category folders
$folders = @("Receipts", "Invoices", "Agreements")
foreach ($f in $folders) {
    $path = Join-Path $root $f
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created folder: $f"
    }
}

# Move receipts
Move-Item -Path (Join-Path $root "Receipt_Delta_Airlines_Jan15_2026.png")    -Destination (Join-Path $root "Receipts")   -ErrorAction SilentlyContinue
Move-Item -Path (Join-Path $root "Receipt_RuthsChris_Toronto_Feb2_2026.png") -Destination (Join-Path $root "Receipts")   -ErrorAction SilentlyContinue

# Move invoices
Move-Item -Path (Join-Path $root "Invoice_BluePeak_AI_Workshop_001.docx")    -Destination (Join-Path $root "Invoices")   -ErrorAction SilentlyContinue
Move-Item -Path (Join-Path $root "Invoice_OpenAI_API_Dec2025.docx")          -Destination (Join-Path $root "Invoices")   -ErrorAction SilentlyContinue

# Move agreements
Move-Item -Path (Join-Path $root "Consulting_Agreement_BluePeak_AI_Jan2026.docx") -Destination (Join-Path $root "Agreements") -ErrorAction SilentlyContinue
Move-Item -Path (Join-Path $root "DevContract_PropertyGuru_Feb2026.docx")         -Destination (Join-Path $root "Agreements") -ErrorAction SilentlyContinue

Write-Host "`nDone. Folder is organized."
