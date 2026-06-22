$dir = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power'
$templatePath = Join-Path $dir 'EHV Transmission Lines.html'
$jsonPath = Join-Path $dir 'innerpages.json'

$templateHtml = Get-Content $templatePath -Raw
$json = Get-Content $jsonPath -Raw | ConvertFrom-Json

$base = $json.innerPages[0]

for ($i = 1; $i -lt $json.innerPages.Length; $i++) {
    $page = $json.innerPages[$i]
    $html = $templateHtml
    
    # Title & Breadcrumb
    $html = $html.Replace("<title>Devangi Power Private Limited | EHV Cable Transmission Line &amp; Substation EPC Project</title>", "<title>Devangi Power Private Limited | $($page.pageTitle)</title>")
    
    # Note: Replace exact breadcrumb and heading
    $html = $html.Replace(">" + $base.breadcrumb[2] + "<", ">" + $page.breadcrumb[2] + "<")
    
    # The heading text might have newlines in it in HTML, but here it's:
    # EHV Transmission Lines
    $html = $html.Replace($base.heroSection.heading, $page.heroSection.heading)
    $html = $html.Replace($base.heroSection.subheading, $page.heroSection.subheading)
    
    # Overview Description (Regex because HTML has <strong> tags in base)
    $overviewRegex = '(?s)(<div class="glass-panel p-8 rounded-2xl border-l-4 border-l-\[#f39449\] bg-white/70 shadow-\[0_20px_50px_rgba\(10,37,64,0\.06\)\] border-t border-r border-b border-white">\s*<p[^>]*>).*?(</p>\s*</div>)'
    $html = [regex]::Replace($html, $overviewRegex, "`${1}" + $page.overviewSection.description + "`${2}")
    
    # Key Benefits (4 items)
    for ($k = 0; $k -lt 4; $k++) {
        $html = $html.Replace(">" + $base.keyBenefitsSection[$k].icon + "<", ">" + $page.keyBenefitsSection[$k].icon + "<")
        $html = $html.Replace($base.keyBenefitsSection[$k].title, $page.keyBenefitsSection[$k].title)
        $html = $html.Replace($base.keyBenefitsSection[$k].description, $page.keyBenefitsSection[$k].description)
    }
    
    # Technical Features (6 items)
    for ($k = 0; $k -lt 6; $k++) {
        $html = $html.Replace(">" + $base.technicalFeaturesSection[$k].icon + "<", ">" + $page.technicalFeaturesSection[$k].icon + "<")
        $html = $html.Replace($base.technicalFeaturesSection[$k].title, $page.technicalFeaturesSection[$k].title)
        $html = $html.Replace($base.technicalFeaturesSection[$k].description, $page.technicalFeaturesSection[$k].description)
    }
    
    $outPath = Join-Path $dir "$($page.pageTitle).html"
    Set-Content -Path $outPath -Value $html -Encoding UTF8
    Write-Output "Generated $($page.pageTitle).html"
}
Write-Output "All pages generated successfully!"
