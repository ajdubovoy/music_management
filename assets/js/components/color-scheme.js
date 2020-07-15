export default function() {
  const body = document.querySelector('body');
  if (window.matchMedia &&
    window.matchMedia('(prefers-color-scheme: dark)').matches) {
    body.dataset.theme = 'dark';
  } else {
    body.dataset.theme = 'light';
  }
};
