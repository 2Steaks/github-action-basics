import launcher from 'k6/x/browser';

export default function () {

  const browser = launcher.launch('chromium', { headless: true });
  const context = browser.newContext();
  const page = context.newPage();
  
  page.goto(__ENV.HOST_NAME, {
    waitUntil: "networkidle",
  });

  const link = page.locator("a");
  console.log(link.innerText());

  page.close();
  browser.close();
}
