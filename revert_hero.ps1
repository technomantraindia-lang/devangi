$filePath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\EHV Transmission Lines.html'
$content = Get-Content $filePath -Raw

$originalHero = @"
    <!-- Section 1: Hero Banner -->
    <section class="relative w-full h-[60vh] md:h-[70vh] flex items-center bg-[#0a2540] overflow-hidden">
      <div class="absolute inset-0 z-0">
        <img src="site_image-1.avif" alt="EHV Transmission Tower" class="w-full h-full object-cover opacity-50" style="transform: scale(1.05);" />
        <div class="absolute inset-0 bg-gradient-to-r from-[#07131f]/90 via-[#07131f]/70 to-transparent"></div>
      </div>
      
      <div class="relative z-10 w-full px-5 md:px-[80px] lg:px-[100px]">
        <div class="max-w-3xl">
          <nav class="flex items-center gap-2 text-sm text-[#a2caf7] mb-6 font-body-md font-semibold tracking-wide">
            <a href="index.html" class="hover:text-white transition-colors">Home</a>
            <span class="text-white/40">/</span>
            <span class="hover:text-white transition-colors cursor-pointer">Our Solutions</span>
            <span class="text-white/40">/</span>
            <span class="text-white">EHV Transmission Lines</span>
          </nav>
          <h1 class="font-headline-xl text-4xl md:text-5xl lg:text-[64px] font-bold text-white leading-tight mb-6 tracking-tight">
            EHV Transmission Lines
          </h1>
          <p class="font-body-lg text-lg md:text-xl text-white/80 max-w-2xl leading-relaxed mb-10 font-light">
            High-voltage transmission infrastructure for reliable power evacuation
          </p>
          <a href="projects.html" class="inline-flex items-center gap-3 bg-[#f39449] hover:bg-[#d47831] text-white px-8 py-4 rounded-full text-base font-semibold transition-all duration-300 shadow-lg hover:shadow-xl hover:-translate-y-1">
            Explore Project Gallery
            <span class="material-symbols-outlined">arrow_forward</span>
          </a>
        </div>
      </div>
    </section>
"@

$newContent = [regex]::Replace($content, '(?s)<!-- Hero Section -->.*?<!-- Section 2: Overview -->', "$originalHero`r`n`r`n    <!-- Section 2: Overview -->")
Set-Content -Path $filePath -Value $newContent -Encoding UTF8
Write-Output "Successfully reverted the Hero Section!"
