$filePath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\EHV Transmission Lines.html'
$content = Get-Content $filePath -Raw

$newSections = @"
    <!-- Section 4: Technical Features -->
    <section class="py-20 md:py-28 relative bg-[#EFF5F9] border-t border-[#0a2540]/5 overflow-hidden">
      <!-- Decorative background -->
      <div class="absolute inset-0 pointer-events-none opacity-[0.03]" style="background-image: radial-gradient(#0a2540 1px, transparent 1px); background-size: 24px 24px;"></div>
      
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="text-center max-w-3xl mx-auto mb-16">
          <h2 class="font-headline-lg text-[32px] md:text-[44px] font-bold text-[#0a2540] mb-4">
            Technical Specifications
          </h2>
          <p class="font-body-lg text-[#1d496f] text-lg">
            Core capabilities delivering robust high-voltage infrastructure.
          </p>
        </div>
        
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 lg:gap-8">
          <!-- Feature 1 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#f39449]/10 flex items-center justify-center text-[#f39449] shrink-0 border border-[#f39449]/20">
              <span class="material-symbols-outlined text-[28px]">electric_meter</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">220kV+ Transmission Capability</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Supports high-voltage power distribution for robust networks.</p>
            </div>
          </div>
          
          <!-- Feature 2 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#a2caf7]/20 flex items-center justify-center text-[#0a2540] shrink-0 border border-[#a2caf7]/40">
              <span class="material-symbols-outlined text-[28px]">account_tree</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">Monopole & Lattice Tower</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Precise erection & alignment for diverse terrains.</p>
            </div>
          </div>
          
          <!-- Feature 3 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#a2caf7]/20 flex items-center justify-center text-[#0a2540] shrink-0 border border-[#a2caf7]/40">
              <span class="material-symbols-outlined text-[28px]">map</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">Route Survey & Alignment</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Optimized corridor planning utilizing advanced topologies.</p>
            </div>
          </div>
          
          <!-- Feature 4 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#f39449]/10 flex items-center justify-center text-[#f39449] shrink-0 border border-[#f39449]/20">
              <span class="material-symbols-outlined text-[28px]">architecture</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">High-Voltage Stringing</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Sag calculation & phase spacing for optimal safety.</p>
            </div>
          </div>
          
          <!-- Feature 5 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#f39449]/10 flex items-center justify-center text-[#f39449] shrink-0 border border-[#f39449]/20">
              <span class="material-symbols-outlined text-[28px]">fact_check</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">Quality Inspection & Testing</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Ensures strict compliance & operational reliability.</p>
            </div>
          </div>
          
          <!-- Feature 6 -->
          <div class="bg-white p-6 md:p-8 rounded-[16px] shadow-[0_10px_30px_rgba(10,37,64,0.04)] border border-[#0a2540]/5 flex flex-col sm:flex-row items-start sm:items-center gap-5 hover:shadow-[0_15px_40px_rgba(10,37,64,0.08)] transition-all duration-300 hover:-translate-y-1">
            <div class="w-14 h-14 rounded-full bg-[#a2caf7]/20 flex items-center justify-center text-[#0a2540] shrink-0 border border-[#a2caf7]/40">
              <span class="material-symbols-outlined text-[28px]">power</span>
            </div>
            <div>
              <h3 class="font-headline-md font-bold text-[#0a2540] text-lg mb-2">Grid Integration & Commissioning</h3>
              <p class="font-body-md text-[#1d496f]/80 leading-relaxed">Fully synchronized and ready for operational load.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section 5: Project Gallery -->
    <section class="py-20 md:py-28 bg-white relative">
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto">
        <div class="flex flex-col md:flex-row md:items-end justify-between mb-12 gap-6">
          <div class="max-w-2xl">
            <h2 class="font-headline-lg text-[32px] md:text-[44px] font-bold text-[#0a2540] mb-4">
              Execution Gallery
            </h2>
            <p class="font-body-lg text-[#1d496f] text-lg">
              A glimpse into our on-ground execution of transmission lines.
            </p>
          </div>
          <a href="projects.html" class="inline-flex items-center gap-2 text-[#f39449] font-bold hover:text-[#d47831] transition-colors group">
            View All Projects
            <span class="material-symbols-outlined group-hover:translate-x-1 transition-transform">arrow_forward</span>
          </a>
        </div>
        
        <!-- Masonry Grid -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 md:gap-6">
          <!-- Large Featured -->
          <div class="md:col-span-2 md:row-span-2 relative group overflow-hidden rounded-[16px] shadow-sm cursor-pointer min-h-[300px] md:min-h-[500px]">
            <img src="site_image-1.avif" alt="400kV Project" class="absolute inset-0 w-full h-full object-cover transition-transform duration-700 group-hover:scale-105" />
            <div class="absolute inset-0 bg-gradient-to-t from-[#0a2540]/90 via-[#0a2540]/30 to-transparent opacity-80 group-hover:opacity-100 transition-opacity duration-300"></div>
            
            <div class="absolute bottom-0 left-0 w-full p-8 translate-y-2 group-hover:translate-y-0 transition-transform duration-300">
              <p class="font-label-caps text-[#f39449] uppercase tracking-widest text-xs font-bold mb-2">400kV Transmission</p>
              <h3 class="font-headline-md text-2xl md:text-3xl font-bold text-white mb-2">Central Grid Expansion</h3>
            </div>
            
            <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-16 h-16 rounded-full bg-white/20 backdrop-blur-md flex items-center justify-center opacity-0 group-hover:opacity-100 transition-all duration-300 group-hover:scale-110 border border-white/40">
              <span class="material-symbols-outlined text-white text-[32px]">open_in_full</span>
            </div>
          </div>
          
          <!-- Small Image 1 -->
          <div class="relative group overflow-hidden rounded-[16px] shadow-sm cursor-pointer min-h-[200px] md:min-h-[240px]">
            <img src="site_image-1.avif" alt="Tower Erection" class="absolute inset-0 w-full h-full object-cover transition-transform duration-700 group-hover:scale-105" />
            <div class="absolute inset-0 bg-gradient-to-t from-[#0a2540]/90 to-transparent opacity-80 group-hover:opacity-100 transition-opacity duration-300"></div>
            
            <div class="absolute bottom-0 left-0 w-full p-6 translate-y-2 group-hover:translate-y-0 transition-transform duration-300">
              <p class="font-label-caps text-[#f39449] uppercase tracking-widest text-[10px] font-bold mb-1">Erection Phase</p>
              <h3 class="font-headline-md text-lg font-bold text-white">Lattice Tower Setup</h3>
            </div>
            
            <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-12 h-12 rounded-full bg-white/20 backdrop-blur-md flex items-center justify-center opacity-0 group-hover:opacity-100 transition-all duration-300 scale-90 group-hover:scale-100 border border-white/40">
              <span class="material-symbols-outlined text-white text-[24px]">open_in_full</span>
            </div>
          </div>
          
          <!-- Small Image 2 -->
          <div class="relative group overflow-hidden rounded-[16px] shadow-sm cursor-pointer min-h-[200px] md:min-h-[240px]">
            <img src="site_image-1.avif" alt="Stringing Works" class="absolute inset-0 w-full h-full object-cover transition-transform duration-700 group-hover:scale-105" />
            <div class="absolute inset-0 bg-gradient-to-t from-[#0a2540]/90 to-transparent opacity-80 group-hover:opacity-100 transition-opacity duration-300"></div>
            
            <div class="absolute bottom-0 left-0 w-full p-6 translate-y-2 group-hover:translate-y-0 transition-transform duration-300">
              <p class="font-label-caps text-[#f39449] uppercase tracking-widest text-[10px] font-bold mb-1">Stringing</p>
              <h3 class="font-headline-md text-lg font-bold text-white">High-Voltage Lines</h3>
            </div>
            
            <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-12 h-12 rounded-full bg-white/20 backdrop-blur-md flex items-center justify-center opacity-0 group-hover:opacity-100 transition-all duration-300 scale-90 group-hover:scale-100 border border-white/40">
              <span class="material-symbols-outlined text-white text-[24px]">open_in_full</span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section 6: Call-to-Action -->
    <section class="py-16 md:py-24 relative overflow-hidden bg-[#0a2540]">
      <!-- Energy lines background -->
      <div class="absolute inset-0 opacity-10">
        <div class="absolute -top-[100px] -right-[100px] w-[500px] h-[500px] rounded-full border-[1px] border-white/30"></div>
        <div class="absolute -top-[50px] -right-[50px] w-[600px] h-[600px] rounded-full border-[1px] border-white/20"></div>
        <div class="absolute top-0 right-0 w-[700px] h-[700px] rounded-full border-[1px] border-white/10"></div>
      </div>
      
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="flex flex-col lg:flex-row items-center justify-between gap-10">
          <div class="max-w-2xl text-center lg:text-left">
            <h2 class="font-headline-lg text-[32px] md:text-[40px] font-bold text-white mb-4 leading-tight">
              Ready to Discuss Your <span class="text-[#f39449]">Transmission Project?</span>
            </h2>
            <p class="font-body-lg text-white/80 text-lg md:text-xl font-light">
              Connect with DPPL's team to discuss turnkey EPC requirements and timeline optimization.
            </p>
          </div>
          <div class="shrink-0">
            <a href="contact.html" class="inline-flex items-center gap-3 bg-[#f39449] text-white px-10 py-5 rounded-full text-lg font-bold hover:bg-[#d47831] transition-all duration-300 shadow-[0_0_20px_rgba(243,148,73,0.3)] hover:shadow-[0_0_40px_rgba(243,148,73,0.5)] hover:-translate-y-1">
              Get a Quote
              <span class="material-symbols-outlined">arrow_forward</span>
            </a>
          </div>
        </div>
      </div>
    </section>
"@

$content = $content -replace '(?s)\s*</main>', "`r`n`r`n$newSections`r`n  </main>"

Set-Content -Path $filePath -Value $content -Encoding UTF8
Write-Output "Successfully appended Sections 4, 5, and 6!"
