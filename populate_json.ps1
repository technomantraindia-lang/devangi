$jsonPath = 'c:\Users\techn\OneDrive\Desktop\vivek projects (1)\vivek projects\power\innerpages.json'
$json = Get-Content $jsonPath -Raw | ConvertFrom-Json

# Generate content for other pages
$pages = @(
    $json.innerPages[0],
    @{
        pageId = "ehv-cable-laying"
        pageTitle = "EHV Cable Laying & Stringing"
        breadcrumb = @("Home", "Our Solutions", "EHV Cable Laying & Stringing")
        heroSection = @{
            heading = "EHV Cable Laying & Stringing"
            subheading = "Precision installation of high-voltage cables for seamless power transmission"
            ctaText = "Explore Project Gallery"
            ctaLink = "projects.html"
            backgroundImage = "site_image-1.avif"
        }
        overviewSection = @{
            title = "Overview"
            description = "DPPL specializes in complex EHV cable laying and stringing operations. Our teams manage everything from trenching and ducting to precise stringing of overhead conductors, ensuring minimal transmission loss and maximum grid reliability."
            image = "site_image-1.avif"
        }
        keyBenefitsSection = @(
            @{ title = "Minimal Power Loss"; description = "Optimized conductor stringing for maximum transmission efficiency."; icon = "electric_bolt" },
            @{ title = "Terrain Adaptability"; description = "Expertise in laying cables across challenging topographies."; icon = "engineering" },
            @{ title = "Safety First"; description = "Strict adherence to safety protocols during high-tension stringing."; icon = "verified_user" },
            @{ title = "End-to-end Execution"; description = "From route clearing to final tensioning and clamping."; icon = "handshake" }
        )
        technicalFeaturesSection = @(
            @{ title = "Underground Cabling"; description = "Trenching, ducting, and direct burial of EHV cables."; icon = "account_tree" },
            @{ title = "Overhead Stringing"; description = "Precise tensioning of ACSR and HTLS conductors."; icon = "architecture" },
            @{ title = "Jointing & Termination"; description = "Expert splicing and sealing for long-term durability."; icon = "electric_meter" },
            @{ title = "Route Survey"; description = "Advanced topographical mapping for optimal cable routing."; icon = "map" },
            @{ title = "Quality Testing"; description = "Comprehensive testing of insulation and conductivity."; icon = "fact_check" },
            @{ title = "Commissioning"; description = "Final load testing and grid synchronization."; icon = "power" }
        )
        projectGallerySection = $json.innerPages[0].projectGallerySection
        ctaSection = $json.innerPages[0].ctaSection
    },
    @{
        pageId = "substation-epc"
        pageTitle = "Substation EPC Project"
        breadcrumb = @("Home", "Our Solutions", "Substation EPC Project")
        heroSection = @{
            heading = "Substation EPC Project"
            subheading = "Turnkey engineering, procurement, and construction of high-voltage substations"
            ctaText = "Explore Project Gallery"
            ctaLink = "projects.html"
            backgroundImage = "site_image-1.avif"
        }
        overviewSection = @{
            title = "Overview"
            description = "We deliver comprehensive EPC solutions for EHV substations. From civil works and structural erection to the installation and testing of transformers, switchgear, and control panels, we ensure a robust and reliable power hub."
            image = "site_image-1.avif"
        }
        keyBenefitsSection = @(
            @{ title = "Turnkey Solutions"; description = "Single-point responsibility from design to commissioning."; icon = "handshake" },
            @{ title = "Advanced Technology"; description = "Integration of state-of-the-art GIS and AIS switchgear."; icon = "engineering" },
            @{ title = "Grid Stability"; description = "Robust infrastructure for reliable voltage step-up/step-down."; icon = "electric_bolt" },
            @{ title = "Compliance"; description = "Adherence to international electrical safety standards."; icon = "verified_user" }
        )
        technicalFeaturesSection = @(
            @{ title = "Civil & Structural"; description = "Foundation design, control room construction, and gantry erection."; icon = "architecture" },
            @{ title = "Transformer Installation"; description = "Safe transport, placement, and oil filtration of power transformers."; icon = "account_tree" },
            @{ title = "Switchgear Setup"; description = "Erection of circuit breakers, isolators, and instrument transformers."; icon = "electric_meter" },
            @{ title = "Control & Protection"; description = "Wiring and configuration of relay and control panels (CRP)."; icon = "fact_check" },
            @{ title = "Earth Matting"; description = "Comprehensive grounding systems for personnel and equipment safety."; icon = "map" },
            @{ title = "Testing & Commissioning"; description = "Rigorous pre-commissioning checks and grid integration."; icon = "power" }
        )
        projectGallerySection = $json.innerPages[0].projectGallerySection
        ctaSection = $json.innerPages[0].ctaSection
    },
    @{
        pageId = "monopole-lattice"
        pageTitle = "Monopole & Lattice Tower"
        breadcrumb = @("Home", "Our Solutions", "Monopole & Lattice Tower")
        heroSection = @{
            heading = "Monopole & Lattice Tower"
            subheading = "Robust structural solutions for diverse transmission requirements"
            ctaText = "Explore Project Gallery"
            ctaLink = "projects.html"
            backgroundImage = "site_image-1.avif"
        }
        overviewSection = @{
            title = "Overview"
            description = "DPPL provides expert erection of both traditional lattice towers and space-saving monopoles. We handle foundation casting, precise structural assembly, and alignment, ensuring durable support for high-voltage transmission lines."
            image = "site_image-1.avif"
        }
        keyBenefitsSection = @(
            @{ title = "Structural Integrity"; description = "Towers engineered to withstand extreme weather and loads."; icon = "verified_user" },
            @{ title = "Space Optimization"; description = "Monopole solutions for urban and space-constrained areas."; icon = "engineering" },
            @{ title = "Rapid Deployment"; description = "Efficient assembly and erection processes to meet timelines."; icon = "electric_bolt" },
            @{ title = "End-to-end Service"; description = "From soil testing and foundations to final structural handover."; icon = "handshake" }
        )
        technicalFeaturesSection = @(
            @{ title = "Foundation Works"; description = "Excavation, rebar binding, and concrete casting."; icon = "architecture" },
            @{ title = "Lattice Assembly"; description = "Bolting and erection of complex galvanized steel structures."; icon = "account_tree" },
            @{ title = "Monopole Erection"; description = "Crane-assisted installation of heavy tubular steel poles."; icon = "electric_meter" },
            @{ title = "Soil Investigation"; description = "Geotechnical surveys to determine foundation requirements."; icon = "map" },
            @{ title = "Quality Control"; description = "Torque checking, galvanization inspection, and alignment verification."; icon = "fact_check" },
            @{ title = "Safety Management"; description = "Strict safety protocols for working at heights."; icon = "power" }
        )
        projectGallerySection = $json.innerPages[0].projectGallerySection
        ctaSection = $json.innerPages[0].ctaSection
    },
    @{
        pageId = "testing-commissioning"
        pageTitle = "Testing & Commissioning"
        breadcrumb = @("Home", "Our Solutions", "Testing & Commissioning")
        heroSection = @{
            heading = "Testing & Commissioning"
            subheading = "Rigorous verification for safe and reliable power infrastructure"
            ctaText = "Explore Project Gallery"
            ctaLink = "projects.html"
            backgroundImage = "site_image-1.avif"
        }
        overviewSection = @{
            title = "Overview"
            description = "Our final and most critical phase. DPPL conducts comprehensive testing of all electrical equipment and transmission lines. We ensure every component meets operational parameters before synchronizing with the grid for seamless commissioning."
            image = "site_image-1.avif"
        }
        keyBenefitsSection = @(
            @{ title = "Operational Safety"; description = "Identifying and mitigating risks before system energization."; icon = "verified_user" },
            @{ title = "Performance Validation"; description = "Ensuring equipment meets design specifications and standards."; icon = "engineering" },
            @{ title = "Smooth Integration"; description = "Seamless synchronization with the existing power grid."; icon = "handshake" },
            @{ title = "Reliability"; description = "Preventing future downtime through rigorous initial checks."; icon = "electric_bolt" }
        )
        technicalFeaturesSection = @(
            @{ title = "Transformer Testing"; description = "IR, winding resistance, vector group, and ratio tests."; icon = "electric_meter" },
            @{ title = "Switchgear Testing"; description = "Contact resistance, timing, and insulation testing of breakers."; icon = "architecture" },
            @{ title = "Relay Configuration"; description = "Setting and testing of protection relays and control logic."; icon = "account_tree" },
            @{ title = "Cable Testing"; description = "Hi-pot testing and insulation resistance measurement."; icon = "fact_check" },
            @{ title = "System Integration"; description = "End-to-end checking of SCADA and communication links."; icon = "map" },
            @{ title = "Energization"; description = "Safe and controlled charging of the transmission line or substation."; icon = "power" }
        )
        projectGallerySection = $json.innerPages[0].projectGallerySection
        ctaSection = $json.innerPages[0].ctaSection
    }
)

$json.innerPages = $pages
$json | ConvertTo-Json -Depth 10 | Set-Content $jsonPath -Encoding UTF8
Write-Output "Successfully updated innerpages.json"
