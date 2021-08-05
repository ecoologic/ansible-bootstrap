#!/usr/bin/env node
// Usage: cat ~/.mozilla/firefox/y0uebzup.default-release/addons.json | ./scripts/firefox-list-addons.js

const { exec } = require("child_process");

const stdin = process.openStdin();

let data = "";

stdin.on("data", (chunk) => (data += chunk));

stdin.on("end", () => {
  const addOns = JSON.parse(data).addons;
  const urls = addOns.map((addOn) => addOn.sourceURI);
  console.log(`Firefox Addons:`, urls);
  exec(`firefox ${urls[0]}`);
  exec(`firefox ${urls[1]}`);
});
