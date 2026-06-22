$inPath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\index.html'
$outPath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\EHV Transmission Lines.html'

$indexContent = Get-Content $inPath -Raw
$lines = $indexContent -split "`r?`n"

$headAndHeader = $lines[0..942] -join "`n"

$footerStartIndex = $lines.IndexOf("  <!-- Footer -->")
if ($footerStartIndex -eq -1) {
    $footerStartIndex = 1705
}

$footerAndScripts = $lines[$footerStartIndex..($lines.Count - 1)] -join "`n"

$mainContent = @"
  <!-- Main Content -->
  <main class="pt-[80px] lg:pt-[104px]">
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
          
          <h1 class="font-headline-xl text-[36px] sm:text-[42px] md:text-[48px] font-bold text-white leading-tight mb-4 tracking-tight drop-shadow-md">
            EHV Transmission Lines
          </h1>
          <p class="font-body-lg text-lg md:text-[20px] text-white/90 font-medium mb-8 max-w-2xl drop-shadow-sm">
            High-voltage transmission infrastructure for reliable power evacuation
          </p>
          
          <a href="projects.html" class="inline-flex items-center justify-center bg-[#f39449] text-white px-7 py-3.5 rounded-full text-base font-bold hover:bg-[#e0833a] active:scale-95 transition-all duration-300 shadow-[0_8px_20px_rgba(243,148,73,0.3)]">
            Explore Project Gallery
          </a>
        </div>
      </div>
    </section>

    <!-- Section 2: Overview -->
    <section class="py-16 md:py-24 bg-surface relative overflow-hidden">
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-20 items-center">
          <div class="max-w-[500px]">
            <p class="font-label-caps text-[#386188] uppercase mb-3 tracking-widest">
              Overview
            </p>
            <h2 class="font-headline-lg text-[32px] md:text-[40px] font-bold text-[#001d34] mb-6 leading-tight">
              Executing with Technical Precision
            </h2>
            <div class="w-16 h-1 bg-[#f39449] mb-8 rounded-full"></div>
            <p class="font-body-lg text-[18px] leading-8 text-[#1d496f] text-opacity-90">
              DPPL executes EHV transmission lines with technical precision, covering design, erection, alignment, stringing, and commissioning. Our solutions ensure grid reliability and efficient power evacuation across industrial and utility corridors.
            </p>
          </div>
          
          <div class="relative">
            <div class="absolute -inset-4 bg-gradient-to-tr from-[#a2caf7]/20 to-transparent rounded-[24px] -z-10 blur-xl"></div>
            <img src="layer-1.png" alt="Transmission Line Site" class="w-full h-auto rounded-[20px] shadow-[0_20px_60px_rgba(10,37,64,0.12)] object-cover border border-[#0a2540]/5" style="max-height: 500px;" />
          </div>
        </div>
      </div>
    </section>

    <!-- Section 3: Key Benefits -->
    <section class="py-16 md:py-24 bg-[#f8fbfd] relative overflow-hidden">
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="text-center max-w-2xl mx-auto mb-16">
          <h2 class="font-headline-lg text-[32px] md:text-[40px] font-bold text-[#001d34] mb-4">
            Key Benefits
          </h2>
          <p class="font-body-md text-[#1d496f] text-lg">
            Delivering excellence through robust engineering and execution
          </p>
        </div>
        
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 lg:gap-8">
          <!-- Benefit 1 -->
          <div class="group bg-white rounded-[20px] p-8 shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#e0e8f0] hover:shadow-[0_20px_50px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-2 relative overflow-hidden flex flex-col items-start">
            <div class="w-14 h-14 rounded-2xl bg-[#0a2540] flex items-center justify-center text-[#f39449] mb-6 group-hover:scale-110 transition-transform duration-300 shadow-[0_8px_20px_rgba(10,37,64,0.15)]">
              <span class="material-symbols-outlined text-[28px]">electric_bolt</span>
            </div>
            <h3 class="font-headline-md text-xl font-bold text-[#001d34] mb-3">
              High Reliability
            </h3>
            <p class="font-body-md text-[#454747] leading-relaxed">
              Designed for uninterrupted power
            </p>
            <div class="absolute bottom-0 left-0 h-1 w-0 bg-[#f39449] group-hover:w-full transition-all duration-500"></div>
          </div>
          
          <!-- Benefit 2 -->
          <div class="group bg-[#0a2540] rounded-[20px] p-8 shadow-[0_15px_40px_rgba(10,37,64,0.15)] border border-[#1d496f]/30 hover:shadow-[0_25px_60px_rgba(10,37,64,0.25)] transition-all duration-300 hover:-translate-y-2 relative overflow-hidden flex flex-col items-start lg:-translate-y-4">
            <div class="absolute inset-0 bg-gradient-to-br from-white/5 to-transparent pointer-events-none"></div>
            <div class="w-14 h-14 rounded-2xl bg-white/10 flex items-center justify-center text-[#f39449] mb-6 group-hover:scale-110 transition-transform duration-300 backdrop-blur-sm border border-white/5">
              <span class="material-symbols-outlined text-[28px]">engineering</span>
            </div>
            <h3 class="font-headline-md text-xl font-bold text-white mb-3">
              Expert Engineering
            </h3>
            <p class="font-body-md text-white/70 leading-relaxed relative z-10">
              Skilled site team and planning
            </p>
            <div class="absolute bottom-0 left-0 h-1 w-0 bg-[#f39449] group-hover:w-full transition-all duration-500"></div>
          </div>
          
          <!-- Benefit 3 -->
          <div class="group bg-white rounded-[20px] p-8 shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#e0e8f0] hover:shadow-[0_20px_50px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-2 relative overflow-hidden flex flex-col items-start">
            <div class="w-14 h-14 rounded-2xl bg-[#0a2540] flex items-center justify-center text-[#f39449] mb-6 group-hover:scale-110 transition-transform duration-300 shadow-[0_8px_20px_rgba(10,37,64,0.15)]">
              <span class="material-symbols-outlined text-[28px]">handshake</span>
            </div>
            <h3 class="font-headline-md text-xl font-bold text-[#001d34] mb-3">
              Turnkey Delivery
            </h3>
            <p class="font-body-md text-[#454747] leading-relaxed">
              End-to-end EPC execution
            </p>
            <div class="absolute bottom-0 left-0 h-1 w-0 bg-[#f39449] group-hover:w-full transition-all duration-500"></div>
          </div>
          
          <!-- Benefit 4 -->
          <div class="group bg-[#0a2540] rounded-[20px] p-8 shadow-[0_15px_40px_rgba(10,37,64,0.15)] border border-[#1d496f]/30 hover:shadow-[0_25px_60px_rgba(10,37,64,0.25)] transition-all duration-300 hover:-translate-y-2 relative overflow-hidden flex flex-col items-start lg:-translate-y-4">
            <div class="absolute inset-0 bg-gradient-to-br from-white/5 to-transparent pointer-events-none"></div>
            <div class="w-14 h-14 rounded-2xl bg-white/10 flex items-center justify-center text-[#f39449] mb-6 group-hover:scale-110 transition-transform duration-300 backdrop-blur-sm border border-white/5">
              <span class="material-symbols-outlined text-[28px]">verified_user</span>
            </div>
            <h3 class="font-headline-md text-xl font-bold text-white mb-3">
              Safety Compliance
            </h3>
            <p class="font-body-md text-white/70 leading-relaxed relative z-10">
              Full regulatory compliance
            </p>
            <div class="absolute bottom-0 left-0 h-1 w-0 bg-[#f39449] group-hover:w-full transition-all duration-500"></div>
          </div>
        </div>
      </div>
    </section>
  </main>
"@

$finalContent = $headAndHeader + "`n" + $mainContent + "`n" + $footerAndScripts

Set-Content -Path $outPath -Value $finalContent -Encoding UTF8
Write-Output "Successfully built EHV Transmission Lines.html at $outPath"
