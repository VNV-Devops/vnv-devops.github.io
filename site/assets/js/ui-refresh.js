(() => {
  "use strict";

  const prefersReducedMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  // Enable progressive enhancement styles
  document.documentElement.classList.add("js");

  // If user prefers reduced motion, just mark everything visible and exit
  if (prefersReducedMotion) {
    document.querySelectorAll("[data-reveal]").forEach((el) => el.classList.add("is-visible"));
    return;
  }

  const els = Array.from(document.querySelectorAll("[data-reveal]"));
  if (els.length === 0) return;

  // IntersectionObserver reveal
  const io = new IntersectionObserver(
    (entries) => {
      entries.forEach((e) => {
        if (e.isIntersecting) {
          e.target.classList.add("is-visible");
          io.unobserve(e.target);
        }
      });
    },
    { root: null, threshold: 0.12 }
  );

  els.forEach((el) => io.observe(el));
})();
