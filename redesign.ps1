$filePath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\EHV Transmission Lines.html'
$content = Get-Content $filePath -Raw

$newMain = @"
  <!-- Main Content -->
  <main class="pt-[80px] lg:pt-[104px] bg-[#070f16]">
    
    <!-- Hero Section -->
    <section class="relative w-full min-h-[65vh] md:min-h-[75vh] flex items-center justify-center overflow-hidden perspective-1000">
      <!-- Immersive Background -->
      <div class="absolute inset-0 z-0">
        <img src="layer-1.png" alt="EHV Transmission Grid" class="w-full h-full object-cover opacity-20 transform scale-105" />
        <div class="absolute inset-0 bg-gradient-to-b from-[#070f16]/90 via-[#070f16]/60 to-[#070f16]"></div>
        <!-- Glowing Orbs -->
        <div class="absolute top-1/4 left-1/4 w-[400px] h-[400px] bg-[#a2caf7]/15 rounded-full blur-[100px] mix-blend-screen pointer-events-none"></div>
        <div class="absolute bottom-1/4 right-1/4 w-[500px] h-[500px] bg-[#f39449]/10 rounded-full blur-[120px] mix-blend-screen pointer-events-none"></div>
      </div>
      
      <!-- Hero Content Glass Card -->
      <div class="relative z-10 w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-5xl mx-auto mt-10">
        <div class="glass-panel p-8 md:p-14 rounded-3xl hologram-border shadow-[0_30px_80px_rgba(10,37,64,0.4)] transition-all duration-700 hover:shadow-[0_40px_100px_rgba(162,202,247,0.15)] relative overflow-hidden group">
          <div class="absolute inset-0 bg-gradient-to-br from-white/5 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-700"></div>
          <div class="scanning-bar"></div>
          
          <nav class="flex items-center gap-3 text-sm text-[#a2caf7] mb-8 font-body-md font-semibold tracking-[0.1em] uppercase">
            <a href="index.html" class="hover:text-white hover:glow-hover transition-colors flex items-center gap-1"><span class="material-symbols-outlined text-[16px]">home</span> Home</a>
            <span class="text-white/30">/</span>
            <span class="text-white/60">Our Solutions</span>
            <span class="text-white/30">/</span>
            <span class="text-[#f39449] drop-shadow-[0_0_8px_rgba(243,148,73,0.6)]">EHV Lines</span>
          </nav>
          
          <h1 class="font-headline-xl text-[40px] sm:text-[54px] md:text-[68px] font-black text-transparent bg-clip-text bg-gradient-to-r from-white via-[#a2caf7] to-white leading-tight mb-6 tracking-tighter drop-shadow-lg">
            EHV Transmission Lines
          </h1>
          <p class="font-body-lg text-lg md:text-[22px] text-[#c2c7cf] font-light mb-10 max-w-3xl leading-relaxed">
            High-voltage transmission infrastructure engineered for <span class="text-white font-semibold">maximum grid reliability</span> and efficient power evacuation.
          </p>
          
          <a href="projects.html" class="inline-flex items-center gap-3 bg-gradient-to-r from-[#f39449] to-[#d47831] text-white px-8 py-4 rounded-full text-[17px] font-bold hover:scale-105 active:scale-95 transition-all duration-300 shadow-[0_0_30px_rgba(243,148,73,0.4)] hover:shadow-[0_0_50px_rgba(243,148,73,0.6)] relative overflow-hidden group/btn">
            <span class="relative z-10">Explore Project Gallery</span>
            <span class="material-symbols-outlined relative z-10 group-hover/btn:translate-x-1 transition-transform">arrow_forward</span>
            <div class="absolute inset-0 bg-white/20 translate-x-[-100%] group-hover/btn:translate-x-[100%] transition-transform duration-700"></div>
          </a>
        </div>
      </div>
    </section>

    <!-- Section 2: Overview -->
    <section class="py-20 md:py-32 relative overflow-hidden bg-[#070f16]">
      <div class="absolute right-0 top-0 w-1/2 h-full bg-[url('layer-1.png')] bg-cover bg-fixed opacity-[0.03] mix-blend-luminosity pointer-events-none"></div>
      
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-16 lg:gap-24 items-center">
          <!-- Text Column -->
          <div class="relative">
            <div class="absolute -left-8 top-10 w-[2px] h-[80%] bg-gradient-to-b from-transparent via-[#a2caf7] to-transparent opacity-40"></div>
            <div class="pl-0 md:pl-6">
              <div class="inline-flex items-center gap-3 px-4 py-2 rounded-full border border-[#f39449]/30 bg-[#f39449]/10 mb-8 backdrop-blur-md">
                <span class="w-2 h-2 rounded-full bg-[#f39449] animate-[ping_2s_cubic-bezier(0,0,0.2,1)_infinite]"></span>
                <p class="font-label-caps text-[#f39449] uppercase tracking-widest text-[13px] font-bold">
                  System Overview
                </p>
              </div>
              <h2 class="font-headline-lg text-[36px] md:text-[48px] font-bold text-white mb-8 leading-[1.15]">
                Executing with <br/><span class="text-transparent bg-clip-text bg-gradient-to-r from-[#a2caf7] to-[#f39449]">Technical Precision</span>
              </h2>
              <div class="glass-panel p-8 rounded-2xl border-l-4 border-l-[#f39449] bg-white/[0.02]">
                <p class="font-body-lg text-[18px] md:text-[20px] leading-relaxed text-[#c2c7cf]">
                  DPPL executes EHV transmission lines with technical precision, covering design, erection, alignment, stringing, and commissioning. Our solutions ensure <strong class="text-white font-semibold">grid reliability</strong> and efficient power evacuation across industrial and utility corridors.
                </p>
              </div>
            </div>
          </div>
          
          <!-- Image Column -->
          <div class="relative group perspective-1000">
            <div class="absolute -inset-4 bg-gradient-to-tr from-[#a2caf7]/30 via-[#f39449]/20 to-transparent rounded-[32px] blur-2xl group-hover:blur-3xl transition-all duration-700 opacity-60"></div>
            <div class="relative rounded-[28px] overflow-hidden border border-white/10 shadow-[0_40px_80px_rgba(0,0,0,0.6)] transform group-hover:translate-y-[-10px] transition-transform duration-700 ease-out">
              <div class="absolute inset-0 bg-[#0a2540]/40 mix-blend-overlay z-10 pointer-events-none"></div>
              <img src="site_image-1.avif" alt="Transmission Line Site" class="w-full h-auto object-cover transform scale-105 group-hover:scale-110 transition-transform duration-1000" style="max-height: 550px;" />
              <!-- Tech overlays -->
              <div class="absolute top-6 right-6 z-20 flex items-center gap-2 bg-black/40 px-3 py-1.5 rounded-full backdrop-blur-md border border-white/10">
                <span class="w-2 h-2 bg-[#f39449] rounded-full animate-pulse"></span>
                <span class="font-label-caps text-[10px] text-white tracking-widest uppercase">Live Site</span>
              </div>
              <div class="absolute bottom-0 left-0 w-full h-1/3 bg-gradient-to-t from-[#070f16] to-transparent z-10 pointer-events-none"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section 3: Key Benefits -->
    <section class="py-20 md:py-32 relative overflow-hidden bg-[#0c141b] border-t border-white/5">
      <!-- Grid pattern background -->
      <div class="absolute inset-0 opacity-40" style="background-image: linear-gradient(rgba(162, 202, 247, 0.05) 1px, transparent 1px), linear-gradient(90deg, rgba(162, 202, 247, 0.05) 1px, transparent 1px); background-size: 40px 40px;"></div>
      
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="text-center max-w-3xl mx-auto mb-20 relative">
          <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[300px] h-[300px] bg-[#a2caf7]/10 rounded-full blur-[80px] -z-10 pointer-events-none"></div>
          <h2 class="font-headline-lg text-[36px] md:text-[52px] font-black text-white mb-6 tracking-tight">
            Engineering <span class="font-light italic text-[#a2caf7]">Excellence</span>
          </h2>
          <p class="font-body-lg text-[#8c9199] text-[20px] max-w-2xl mx-auto">
            Delivering unparalleled infrastructure value through robust execution and state-of-the-art methodology.
          </p>
        </div>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          
          <!-- Benefit 1 -->
          <div class="metric-card p-8 rounded-3xl border border-white/10 flex flex-col items-start group hover:-translate-y-3 transition-all duration-500 hover:border-[#f39449]/50 hover:shadow-[0_20px_60px_rgba(243,148,73,0.15)] relative overflow-hidden bg-white/[0.02]">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-bl from-[#f39449]/20 to-transparent rounded-bl-full opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-[#0a2540] to-[#070f16] border border-white/10 flex items-center justify-center text-[#f39449] mb-8 group-hover:scale-110 transition-transform duration-500 shadow-[inset_0_0_20px_rgba(0,0,0,0.5)]">
              <span class="material-symbols-outlined text-[32px]">electric_bolt</span>
            </div>
            <h3 class="font-headline-md text-[22px] font-bold text-white mb-4 group-hover:text-[#a2caf7] transition-colors duration-300">
              High Reliability
            </h3>
            <p class="font-body-md text-[#8c9199] leading-relaxed relative z-10 group-hover:text-white/90 transition-colors duration-300">
              Engineered structures built for completely uninterrupted power flow.
            </p>
            <div class="mt-8 pt-6 border-t border-white/10 w-full flex items-center justify-between text-[#f39449] opacity-0 group-hover:opacity-100 transition-opacity duration-500 transform translate-y-4 group-hover:translate-y-0">
              <span class="text-sm font-bold tracking-wider uppercase">Discover</span>
              <span class="material-symbols-outlined">east</span>
            </div>
          </div>
          
          <!-- Benefit 2 -->
          <div class="metric-card p-8 rounded-3xl border border-white/10 flex flex-col items-start group hover:-translate-y-3 transition-all duration-500 hover:border-[#a2caf7]/50 hover:shadow-[0_20px_60px_rgba(162,202,247,0.15)] relative overflow-hidden lg:mt-12 bg-white/[0.02]">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-bl from-[#a2caf7]/20 to-transparent rounded-bl-full opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-[#0a2540] to-[#070f16] border border-white/10 flex items-center justify-center text-[#a2caf7] mb-8 group-hover:scale-110 transition-transform duration-500 shadow-[inset_0_0_20px_rgba(0,0,0,0.5)]">
              <span class="material-symbols-outlined text-[32px]">engineering</span>
            </div>
            <h3 class="font-headline-md text-[22px] font-bold text-white mb-4 group-hover:text-[#a2caf7] transition-colors duration-300">
              Expert Engineering
            </h3>
            <p class="font-body-md text-[#8c9199] leading-relaxed relative z-10 group-hover:text-white/90 transition-colors duration-300">
              Deployed by specialized teams with decades of terrain and layout planning experience.
            </p>
            <div class="mt-8 pt-6 border-t border-white/10 w-full flex items-center justify-between text-[#a2caf7] opacity-0 group-hover:opacity-100 transition-opacity duration-500 transform translate-y-4 group-hover:translate-y-0">
              <span class="text-sm font-bold tracking-wider uppercase">Discover</span>
              <span class="material-symbols-outlined">east</span>
            </div>
          </div>
          
          <!-- Benefit 3 -->
          <div class="metric-card p-8 rounded-3xl border border-white/10 flex flex-col items-start group hover:-translate-y-3 transition-all duration-500 hover:border-[#f39449]/50 hover:shadow-[0_20px_60px_rgba(243,148,73,0.15)] relative overflow-hidden bg-white/[0.02]">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-bl from-[#f39449]/20 to-transparent rounded-bl-full opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-[#0a2540] to-[#070f16] border border-white/10 flex items-center justify-center text-[#f39449] mb-8 group-hover:scale-110 transition-transform duration-500 shadow-[inset_0_0_20px_rgba(0,0,0,0.5)]">
              <span class="material-symbols-outlined text-[32px]">handshake</span>
            </div>
            <h3 class="font-headline-md text-[22px] font-bold text-white mb-4 group-hover:text-[#a2caf7] transition-colors duration-300">
              Turnkey Delivery
            </h3>
            <p class="font-body-md text-[#8c9199] leading-relaxed relative z-10 group-hover:text-white/90 transition-colors duration-300">
              Complete end-to-end EPC execution from conception to synchronized commissioning.
            </p>
            <div class="mt-8 pt-6 border-t border-white/10 w-full flex items-center justify-between text-[#f39449] opacity-0 group-hover:opacity-100 transition-opacity duration-500 transform translate-y-4 group-hover:translate-y-0">
              <span class="text-sm font-bold tracking-wider uppercase">Discover</span>
              <span class="material-symbols-outlined">east</span>
            </div>
          </div>
          
          <!-- Benefit 4 -->
          <div class="metric-card p-8 rounded-3xl border border-white/10 flex flex-col items-start group hover:-translate-y-3 transition-all duration-500 hover:border-[#a2caf7]/50 hover:shadow-[0_20px_60px_rgba(162,202,247,0.15)] relative overflow-hidden lg:mt-12 bg-white/[0.02]">
            <div class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-bl from-[#a2caf7]/20 to-transparent rounded-bl-full opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-[#0a2540] to-[#070f16] border border-white/10 flex items-center justify-center text-[#a2caf7] mb-8 group-hover:scale-110 transition-transform duration-500 shadow-[inset_0_0_20px_rgba(0,0,0,0.5)]">
              <span class="material-symbols-outlined text-[32px]">verified_user</span>
            </div>
            <h3 class="font-headline-md text-[22px] font-bold text-white mb-4 group-hover:text-[#a2caf7] transition-colors duration-300">
              Safety Compliance
            </h3>
            <p class="font-body-md text-[#8c9199] leading-relaxed relative z-10 group-hover:text-white/90 transition-colors duration-300">
              Total adherence to rigorous regulatory standards and international safety protocols.
            </p>
            <div class="mt-8 pt-6 border-t border-white/10 w-full flex items-center justify-between text-[#a2caf7] opacity-0 group-hover:opacity-100 transition-opacity duration-500 transform translate-y-4 group-hover:translate-y-0">
              <span class="text-sm font-bold tracking-wider uppercase">Discover</span>
              <span class="material-symbols-outlined">east</span>
            </div>
          </div>
          
        </div>
      </div>
    </section>
  </main>
"@

$newContent = [regex]::Replace($content, '(?s)<!-- Main Content -->\s*<main.*?</main>', $newMain)
Set-Content -Path $filePath -Value $newContent -Encoding UTF8
Write-Output "Successfully completely redesigned the page!"
