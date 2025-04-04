
import fs from 'fs';
import { load } from 'cheerio';

const URL = "https://www.proshop.dk/Baerbar-computer";

// const response = await fetch(URL);
// const result = await response.text();

// fs.writeFileSync("index.html", result);

const pageContent = fs.readFileSync("index.html").toString();

const $ = load(pageContent);


$("#products [product]").each((index, element) => {
    const name = $(element).find(".site-product-link h2").text();
    const description = $(element).find(".site-product-link").text();
    const price = $(element).find(".site-currency-lg").text();
    
    console.log(name);
    console.log(price);
});



