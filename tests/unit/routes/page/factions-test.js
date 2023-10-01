import { module, test } from 'qunit';
import { setupTest } from 'netrunnerdb/tests/helpers';

module('Unit | Route | factions', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:page/factions');
    assert.ok(route);
  });
});
