/**
 * A version of querySelectorAll() that also recursively looks into all shadow roots.
 * @param selector Selector
 * @param root (Optional) Scope of the query (Element or Document). Defaults to the document.
 * @returns 
 */
function deepQuerySelectorAll(selector, root) {
  root = root || document;
  const results = Array.from(root.querySelectorAll(selector));
  const pushNestedResults = function (root) {
    deepQuerySelectorAll(selector, root)
      .forEach(elem => {
        if (!results.includes(elem)) {
          results.push(elem);
        }
      });
  };
  if (root.shadowRoot) {
    pushNestedResults(root.shadowRoot);
  }
  for (const elem of root.querySelectorAll('*')) {
    if (elem.shadowRoot) {
      pushNestedResults(elem.shadowRoot);
    }
  }
  return results;
}
