$filePath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\EHV Transmission Lines.html'
$content = Get-Content $filePath -Raw

$newSection2 = @"
    <!-- Section 2: Overview -->
    <section class="py-20 md:py-32 relative overflow-hidden bg-[#f8fbfd]">
      <div class="absolute right-0 top-0 w-1/2 h-full bg-[url('layer-1.png')] bg-cover bg-fixed opacity-[0.04] mix-blend-multiply pointer-events-none"></div>
      
      <div class="w-[calc(100%-40px)] md:w-[calc(100%-96px)] max-w-[1400px] mx-auto relative z-10">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-16 lg:gap-24 items-center">
          <!-- Text Column -->
          <div class="relative">
            <div class="absolute -left-8 top-10 w-[2px] h-[80%] bg-gradient-to-b from-transparent via-[#a2caf7] to-transparent opacity-60"></div>
            <div class="pl-0 md:pl-6">
              <div class="inline-flex items-center gap-3 px-4 py-2 rounded-full border border-[#f39449]/40 bg-[#f39449]/10 mb-8 backdrop-blur-md shadow-sm">
                <span class="w-2 h-2 rounded-full bg-[#f39449] animate-[ping_2s_cubic-bezier(0,0,0.2,1)_infinite]"></span>
                <p class="font-label-caps text-[#e06a12] uppercase tracking-widest text-[13px] font-bold">
                  System Overview
                </p>
              </div>
              <h2 class="font-headline-lg text-[36px] md:text-[48px] font-bold text-[#001d34] mb-8 leading-[1.15]">
                Executing with <br/><span class="text-transparent bg-clip-text bg-gradient-to-r from-[#001d34] to-[#f39449]">Technical Precision</span>
              </h2>
              <div class="glass-panel p-8 rounded-2xl border-l-4 border-l-[#f39449] bg-white/70 shadow-[0_20px_50px_rgba(10,37,64,0.06)] border-t border-r border-b border-white">
                <p class="font-body-lg text-[18px] md:text-[20px] leading-relaxed text-[#1d496f]">
                  DPPL executes EHV transmission lines with technical precision, covering design, erection, alignment, stringing, and commissioning. Our solutions ensure <strong class="text-[#001d34] font-bold">grid reliability</strong> and efficient power evacuation across industrial and utility corridors.
                </p>
              </div>
            </div>
          </div>
          
          <!-- Image Column -->
          <div class="relative group perspective-1000">
            <div class="absolute -inset-4 bg-gradient-to-tr from-[#a2caf7]/40 via-[#f39449]/30 to-transparent rounded-[32px] blur-2xl group-hover:blur-3xl transition-all duration-700 opacity-60"></div>
            <div class="relative rounded-[28px] overflow-hidden border border-white shadow-[0_30px_60px_rgba(10,37,64,0.15)] transform group-hover:translate-y-[-10px] transition-transform duration-700 ease-out">
              <img src="site_image-1.avif" alt="Transmission Line Site" class="w-full h-auto object-cover transform scale-105 group-hover:scale-110 transition-transform duration-1000" style="max-height: 550px;" />
              <!-- Tech overlays -->
              <div class="absolute top-6 right-6 z-20 flex items-center gap-2 bg-white/80 px-3 py-1.5 rounded-full backdrop-blur-md border border-white shadow-sm">
                <span class="w-2 h-2 bg-[#f39449] rounded-full animate-pulse"></span>
                <span class="font-label-caps text-[10px] text-[#001d34] tracking-widest uppercase font-bold">Live Site</span>
              </div>
              <div class="absolute bottom-0 left-0 w-full h-1/4 bg-gradient-to-t from-[#0a2540]/30 to-transparent z-10 pointer-events-none"></div>
            </div>
          </div>
        </div>
      </div>
    </section>

"@

$newContent = [regex]::Replace($content, '(?s)<!-- Section 2: Overview -->.*?<!-- Section 3: Key Benefits -->', "$newSection2    <!-- Section 3: Key Benefits -->")
Set-Content -Path $filePath -Value $newContent -Encoding UTF8
Write-Output "Successfully made Section 2 light theme!"
