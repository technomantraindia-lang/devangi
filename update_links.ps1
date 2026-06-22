$dir = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power'
$files = Get-ChildItem -Path $dir -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw

    $pattern = 'href="services\.html"(?=(?:(?!</a>).)*?EHV Transmission Lines)'
    
    $newContent = [regex]::Replace($content, $pattern, 'href="EHV Transmission Lines.html"', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8
        Write-Output "Updated $($file.Name)"
    }
}
Write-Output "Done updating links."
