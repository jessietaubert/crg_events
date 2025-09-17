document.addEventListener("turbo:load", () => {
  const modal = document.getElementById("log-climb-modal");
  const openBtn = document.getElementById("open-log-climb");
  const closeBtn = document.getElementById("close-modal");

  if (!modal || !openBtn || !closeBtn) return;

  openBtn.addEventListener("click", (e) => {
    e.preventDefault();
    modal.classList.remove("hidden");
  });

  closeBtn.addEventListener("click", () => {
    modal.classList.add("hidden");
  });

  window.addEventListener("click", (e) => {
    if (e.target === modal) {
      modal.classList.add("hidden");
    }
  });
});
