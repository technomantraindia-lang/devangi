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
