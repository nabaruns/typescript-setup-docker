import * as assert from 'assert';

describe('test', () => {
  describe('#_test', () => {
    it('Successfully test', async () => {
      const sum = 1 + 1;
      assert.equal(2, sum);
    });
  });
});
