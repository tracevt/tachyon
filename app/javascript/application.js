function closeAlert() {
  const alert = document.querySelector('.js-alert');

  alert.remove();
}

function enableCloseAlert() {
  const alertEl = document.querySelector('.js-close-alert');

  if (!alertEl) return;

  alertEl.addEventListener('click', closeAlert);
}

enableCloseAlert();
