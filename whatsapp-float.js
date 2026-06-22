(function () {
  if (document.getElementById('whatsapp-float-btn')) return;

  const WHATSAPP_NUMBER = '919725661325';
  const DEFAULT_MESSAGE = 'Hello Devangi Power, I would like to inquire about your services.';
  const whatsappUrl =
    'https://wa.me/' + WHATSAPP_NUMBER + '?text=' + encodeURIComponent(DEFAULT_MESSAGE);

  const style = document.createElement('style');
  style.textContent =
    '#whatsapp-float-btn{' +
    'position:fixed;bottom:1.5rem;right:1.5rem;z-index:90;' +
    'display:flex;align-items:center;gap:0.75rem;text-decoration:none;' +
    'font-family:Montserrat,system-ui,sans-serif;}' +
    '#whatsapp-float-btn .whatsapp-float-pill{' +
    'opacity:0;transform:translateX(8px);pointer-events:none;' +
    'background:#fff;color:#0a2540;font-size:0.8125rem;font-weight:700;' +
    'padding:0.55rem 0.95rem;border-radius:9999px;' +
    'box-shadow:0 10px 30px rgba(10,37,64,0.18);white-space:nowrap;' +
    'transition:opacity .25s ease,transform .25s ease;}' +
    '#whatsapp-float-btn:hover .whatsapp-float-pill,' +
    '#whatsapp-float-btn:focus-visible .whatsapp-float-pill{' +
    'opacity:1;transform:translateX(0);}' +
    '#whatsapp-float-btn .whatsapp-float-icon{' +
    'width:3.75rem;height:3.75rem;border-radius:9999px;' +
    'background:#25D366;color:#fff;display:flex;align-items:center;justify-content:center;' +
    'box-shadow:0 12px 28px rgba(37,211,102,0.42);' +
    'transition:transform .25s ease,box-shadow .25s ease;}' +
    '#whatsapp-float-btn:hover .whatsapp-float-icon,' +
    '#whatsapp-float-btn:focus-visible .whatsapp-float-icon{' +
    'transform:translateY(-2px) scale(1.04);' +
    'box-shadow:0 16px 34px rgba(37,211,102,0.5);}' +
    '#whatsapp-float-btn .whatsapp-float-icon svg{width:1.9rem;height:1.9rem;fill:currentColor;}' +
    '#whatsapp-float-btn .whatsapp-float-ring{' +
    'position:absolute;inset:0;border-radius:9999px;border:2px solid rgba(37,211,102,0.45);' +
    'animation:whatsapp-pulse 2s ease-out infinite;pointer-events:none;}' +
    '@keyframes whatsapp-pulse{' +
    '0%{transform:scale(1);opacity:.75;}' +
    '100%{transform:scale(1.45);opacity:0;}}' +
    '@media (max-width:640px){' +
    '#whatsapp-float-btn{bottom:1.1rem;right:1.1rem;}' +
    '#whatsapp-float-btn .whatsapp-float-icon{width:3.35rem;height:3.35rem;}' +
    '#whatsapp-float-btn .whatsapp-float-pill{display:none;}}' +
    '@media (prefers-reduced-motion:reduce){' +
    '#whatsapp-float-btn .whatsapp-float-ring{animation:none;display:none;}}';

  const link = document.createElement('a');
  link.id = 'whatsapp-float-btn';
  link.href = whatsappUrl;
  link.target = '_blank';
  link.rel = 'noopener noreferrer';
  link.setAttribute('aria-label', 'Chat with Devangi Power on WhatsApp');
  link.innerHTML =
    '<span class="whatsapp-float-pill">Chat on WhatsApp</span>' +
    '<span class="whatsapp-float-icon" style="position:relative">' +
    '<span class="whatsapp-float-ring" aria-hidden="true"></span>' +
    '<svg viewBox="0 0 24 24" aria-hidden="true"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.435 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>' +
    '</span>';

  document.head.appendChild(style);
  document.body.appendChild(link);
})();
