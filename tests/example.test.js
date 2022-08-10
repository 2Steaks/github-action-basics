import launcher from 'k6/x/browser'

const blah = () => {
  const browser = launcher.launch('chromium', { debug: true, headless: false })
  const context = browser.newContext()
  const page = context.newPage()
  page.goto('https://planner-benjo696.vercel.app', {
    waitUntil: 'networkidle',
  })

  page.fill('input', 'Chorizo')
  page.press('input', 'Enter')

  page.locator('h1', { hasText: 'Search' })
  page.locator('text=Tomato, red wine & chorizo risotto').click()

  page.close()
  browser.close()
}

// eslint-disable-next-line no-restricted-syntax
export default blah
