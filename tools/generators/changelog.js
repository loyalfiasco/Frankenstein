const standardVersion = require('standard-version');

// Options are the same as command line, except camelCase
// standardVersion returns a Promise
standardVersion({
  noVerify: true,
  infile: 'packages/frankenstein/CHANGELOG.md',
  silent: true,
}).then(() => {
  // standard-version is done
}).catch(err => {
  console.error(`standard-version failed with message: ${err.message}`);
});
