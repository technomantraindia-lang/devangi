const hero = document.querySelector('#hero');
const heroLayer = document.querySelector('.hero-layer');
const heroContent = document.querySelector('.hero-content');

let ticking = false;

function clamp(value, min, max) {
  return Math.min(Math.max(value, min), max);
}

function updateHeroParallax() {
  if (!hero || !heroLayer || !heroContent) {
    ticking = false;
    return;
  }

  const heroHeight = hero.offsetHeight || window.innerHeight;
  const scrollY = window.scrollY || window.pageYOffset;
  const progress = clamp(scrollY / heroHeight, 0, 1);

  const layerMove = scrollY * 0.28;
  const contentMove = scrollY * 0.42;
  const contentScale = 1 - progress * 0.12;
  const contentOpacity = clamp(1 - progress * 1.35, 0, 1);

  heroLayer.style.transform = `translate3d(0, ${layerMove}px, 0) scale(1.04)`;
  heroContent.style.transform = `translate3d(0, ${contentMove}px, 0) scale(${contentScale})`;
  heroContent.style.opacity = contentOpacity;

  ticking = false;
}

function requestHeroParallaxUpdate() {
  if (!ticking) {
    window.requestAnimationFrame(updateHeroParallax);
    ticking = true;
  }
}

window.addEventListener('scroll', requestHeroParallaxUpdate, { passive: true });
window.addEventListener('resize', requestHeroParallaxUpdate);
window.addEventListener('load', requestHeroParallaxUpdate);
requestHeroParallaxUpdate();

const projectRail = document.querySelector('.project-rail');
const projectPrev = document.querySelector('.project-prev');
const projectNext = document.querySelector('.project-next');

function scrollProjects(direction) {
  if (!projectRail) return;

  const firstTile = projectRail.querySelector('.project-tile');
  const scrollAmount = firstTile ? firstTile.offsetWidth + 24 : projectRail.clientWidth * 0.8;

  projectRail.scrollBy({
    left: direction * scrollAmount,
    behavior: 'smooth',
  });
}

projectPrev?.addEventListener('click', () => scrollProjects(-1));
projectNext?.addEventListener('click', () => scrollProjects(1));

const certModal = document.querySelector('.cert-modal');
const certModalTitle = document.querySelector('.cert-modal-title');
const certModalDetail = document.querySelector('.cert-modal-detail');
const certModalClose = document.querySelector('.cert-modal-close');
const certTriggers = document.querySelectorAll('.cert-modal-trigger');

function closeCertModal() {
  certModal?.classList.add('hidden');
  certModal?.classList.remove('flex');
}

certTriggers.forEach((trigger) => {
  trigger.addEventListener('click', () => {
    if (!certModal || !certModalTitle || !certModalDetail) return;

    certModalTitle.textContent = trigger.dataset.title || '';
    certModalDetail.textContent = trigger.dataset.detail || '';
    certModal.classList.remove('hidden');
    certModal.classList.add('flex');
  });
});

certModalClose?.addEventListener('click', closeCertModal);
certModal?.addEventListener('click', (event) => {
  if (event.target === certModal) {
    closeCertModal();
  }
});

window.addEventListener('keydown', (event) => {
  if (event.key === 'Escape') {
    closeCertModal();
  }
});

function initializeHomeReveals() {
  const isHomePage = document.querySelector('#hero')
    && document.querySelector('#services')
    && document.querySelector('#metrics');

  if (!isHomePage) return;

  const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  const registeredElements = new Set();

  function register(selector, effect = 'up', stagger = 0, baseDelay = 0) {
    document.querySelectorAll(selector).forEach((element, index) => {
      if (registeredElements.has(element)) return;

      registeredElements.add(element);
      element.classList.add('reveal-item', `reveal-${effect}`);
      element.style.setProperty('--reveal-delay', `${baseDelay + index * stagger}ms`);
    });
  }

  register('#hero h2', 'left', 0, 120);
  register('#hero .hero-content p', 'right', 0, 280);
  register('#hero .hero-content > div:last-child', 'up', 0, 450);

  register('#about aside > div > p, #about aside h2', 'left', 110);
  register('#about aside .relative.overflow-hidden', 'up', 0, 180);
  register('#about .lg\\:grid-cols-\\[0\\.9fr_1\\.1fr\\] > div > div:first-child', 'right');
  document.querySelectorAll('#about .grid.sm\\:grid-cols-2 > div').forEach((item, index) => {
    if (registeredElements.has(item)) return;
    registeredElements.add(item);
    item.classList.add('reveal-item', index % 2 === 0 ? 'reveal-left' : 'reveal-right');
    item.style.setProperty('--reveal-delay', `${80 + index * 90}ms`);
  });
  register('#about .about-flow-panel', 'up', 0, 160);

  register('#services .xl\\:sticky > p, #services .xl\\:sticky > h2, #services .xl\\:sticky > p + a', 'left', 120);
  register('#services .xl\\:sticky > div', 'up', 0, 180);
  document.querySelectorAll('#services .service-row').forEach((row, index) => {
    if (registeredElements.has(row)) return;
    registeredElements.add(row);
    row.classList.add('reveal-item', index % 2 === 0 ? 'reveal-right' : 'reveal-left');
    row.style.setProperty('--reveal-delay', `${Math.min(index, 4) * 75}ms`);
  });

  register('#projects .max-w-4xl > p, #projects .max-w-4xl > h2', 'left', 100);
  register('#projects .lg\\:text-right', 'right', 0, 120);
  document.querySelectorAll('#projects .project-tile').forEach((tile, index) => {
    if (registeredElements.has(tile)) return;
    registeredElements.add(tile);
    tile.classList.add('reveal-item', index % 2 === 0 ? 'reveal-up' : 'reveal-down');
    tile.style.setProperty('--reveal-delay', `${index * 110}ms`);
  });

  register('#metrics .grid > div:first-child > *', 'left', 105);
  document.querySelectorAll('#metrics .metric-card').forEach((card, index) => {
    if (registeredElements.has(card)) return;
    registeredElements.add(card);
    card.classList.add('reveal-item', index % 2 === 0 ? 'reveal-left' : 'reveal-right');
    card.style.setProperty('--reveal-delay', `${80 + index * 90}ms`);
  });

  register('.trusted-clients-section .client-wall > div:first-child > div > div > *', 'left', 110);
  document.querySelectorAll('.trusted-clients-section .client-tile').forEach((tile, index) => {
    if (registeredElements.has(tile)) return;
    registeredElements.add(tile);
    const directions = ['reveal-left', 'reveal-up', 'reveal-right'];
    tile.classList.add('reveal-item', directions[index % directions.length]);
    tile.style.setProperty('--reveal-delay', `${index * 70}ms`);
  });
  register('.trusted-clients-section .client-more-tile', 'right', 0, 180);

  register('#certifications .xl\\:grid-cols-\\[0\\.82fr_1\\.18fr\\] > div:first-child > *', 'left', 100);
  document.querySelectorAll('#certifications .cert-badge').forEach((badge, index) => {
    if (registeredElements.has(badge)) return;
    registeredElements.add(badge);
    badge.classList.add('reveal-item', index % 2 === 0 ? 'reveal-up' : 'reveal-down');
    badge.style.setProperty('--reveal-delay', `${index * 110}ms`);
  });

  register('#contact .lg\\:grid-cols-\\[1\\.05fr_0\\.95fr\\] > div:first-child > p, #contact .lg\\:grid-cols-\\[1\\.05fr_0\\.95fr\\] > div:first-child > h2', 'left', 110);
  register('#contact form > *', 'up', 85, 100);
  register('#contact .lg\\:grid-cols-\\[1\\.05fr_0\\.95fr\\] > div:last-child', 'right', 0, 160);

  register('footer .lg\\:grid-cols-\\[1\\.25fr_0\\.75fr_1fr_0\\.75fr\\] > div', 'up', 110);
  register('footer .border-t', 'right', 0, 120);

  const revealItems = document.querySelectorAll('.reveal-item');
  document.documentElement.classList.add('reveal-ready');

  function clearRevealClasses(element) {
    element.classList.remove(
      'reveal-item',
      'reveal-up',
      'reveal-left',
      'reveal-right',
      'reveal-down',
      'is-revealed',
    );
    element.style.removeProperty('--reveal-delay');
  }

  if (reduceMotion || !('IntersectionObserver' in window)) {
    revealItems.forEach(clearRevealClasses);
    return;
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (!entry.isIntersecting) return;

      const element = entry.target;
      const delay = Number.parseInt(element.style.getPropertyValue('--reveal-delay'), 10) || 0;

      element.classList.add('is-revealed');
      observer.unobserve(element);

      window.setTimeout(() => {
        clearRevealClasses(element);
      }, delay + 1000);
    });
  }, {
    threshold: 0.12,
    rootMargin: '0px 0px -8% 0px',
  });

  revealItems.forEach((element) => observer.observe(element));
}

initializeHomeReveals();
