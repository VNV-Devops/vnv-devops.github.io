(() => {
  const overlay = document.getElementById("hello-preloader");
  const wordEl = document.getElementById("hello-word");

  // If markup isn't present, do nothing.
  if (!overlay || !wordEl) return;

  // Your requested languages (local words)
  // German, French, Spanish, English, Mandarin, Hindi, Malayalam,
  // Sanskrit, Tamil, Dutch, Greek, Arabic, Portuguese, Russian
  const hellos = [
    { lang: "Deutsch", text: "Hallo" },
    { lang: "Français", text: "Bonjour" },
    { lang: "Español", text: "Hola" },
    { lang: "English", text: "Hello" },
    { lang: "中文", text: "你好" },
    { lang: "हिन्दी", text: "नमस्ते" },
    { lang: "മലയാളം", text: "നമസ്കാരം" },
    { lang: "संस्कृतम्", text: "नमः" },
    { lang: "தமிழ்", text: "வணக்கம்" },
    { lang: "Nederlands", text: "Hallo" },
    { lang: "Ελληνικά", text: "Γειά σου" },
    { lang: "العربية", text: "مرحبا" },
    { lang: "Português", text: "Olá" },
    { lang: "Русский", text: "Привет" },
  ];

//   const STEP_MS = 180;          // per-word cadence
//   const TOTAL_MS = 2200;        // max time before hide
//   const MIN_STEPS = 9;          // ensure some cycling even on fast loads

const STEP_MS = 180;

// Ensure we show every language at least once.
const MIN_STEPS = hellos.length;

// Hard cap so it never feels slow (14 * 180ms ≈ 2520ms).
const TOTAL_MS = Math.max(2800, (hellos.length * STEP_MS) + 500);


  let i = 0;
  let steps = 0;
  let hidden = false;

  const hide = () => {
    if (hidden) return;
    hidden = true;
    overlay.classList.add("is-hidden");
    // Allow body scroll immediately after hide
    document.documentElement.style.overflow = "";
    document.body.style.overflow = "";
  };

  // Lock scroll while overlay is visible (optional; feels premium)
  document.documentElement.style.overflow = "hidden";
  document.body.style.overflow = "hidden";

  // Failsafe: never trap user if something goes wrong
  const failsafe = window.setTimeout(() => {
    overlay.setAttribute("data-failsafe", "true");
    hide();
  }, 4000);

  const tick = () => {
    const item = hellos[i % hellos.length];
    wordEl.textContent = item.text;
    wordEl.setAttribute("lang", item.lang);

    i += 1;
    steps += 1;

    // Stop cycling once page is ready AND we showed enough steps
    if ((document.readyState === "complete" || document.readyState === "interactive") && steps >= MIN_STEPS) {
      window.setTimeout(hide, 120);
      window.clearTimeout(failsafe);
      return;
    }

    window.setTimeout(tick, STEP_MS);
  };

  // Start cycling immediately
  tick();

  // Hard max duration
  window.setTimeout(() => {
    hide();
    window.clearTimeout(failsafe);
  }, TOTAL_MS);

  // Also hide on load (whichever is later vs min steps)
  window.addEventListener("load", () => {
    if (steps >= MIN_STEPS) hide();
  });
})();
