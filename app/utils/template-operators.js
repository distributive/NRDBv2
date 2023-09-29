export const eq = (a, b) => a === b;
export const maybe = (val, def = 'X') => (val >= 0 ? val : def);
export const formatDate = (date) => Intl.DateTimeFormat().format(date);
export const replaceClassCardPageUrls = (t) =>
  t.replaceAll(/\/en\/card\//g, '/page/card/');
