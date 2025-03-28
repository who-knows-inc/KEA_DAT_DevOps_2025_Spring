const { test, expect } = require('@playwright/test');

test('can search and creates a query string', async ({ page }) => {
    await page.goto('/');
    await page.getByPlaceholder('Search...').fill('this is a search test');
    await page.getByRole('button', { name: 'Search' }).click();

    expect(page.url()).toContain('/?q=this+is+a+search+test');
});


// test('can register and login', async ({ page }) => {
//     await page.goto('http://localhost:8080/');
//     await page.getByRole('link', { name: 'Register' }).click();
//     await page.locator('input[name="username"]').click();
//     await page.locator('input[name="username"]').fill('a');
//     await page.getByRole('definition').nth(1).click();
//     await page.locator('input[name="email"]').fill('a@a');
//     await page.locator('input[name="email"]').press('Tab');
//     await page.locator('input[name="password"]').fill('a');
//     await page.locator('input[name="password"]').press('Tab');
//     await page.locator('input[name="password2"]').fill('a');
//     await page.getByRole('button', { name: 'Sign Up' }).click();
//     await page.getByRole('definition').first().click();
//     await page.locator('input[name="username"]').fill('a');
//     await page.locator('input[name="password"]').click();
//     await page.locator('input[name="password"]').fill('a');
//     await page.getByRole('button', { name: 'Log In' }).click();
// });