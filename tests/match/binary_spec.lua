local Match = require("cmp_kitty.match")
local dut = Match.new()

describe("binary", function()
	it("should match binary", function()
		assert.is_true(dut:binary("0101"))
		assert.is_true(dut:binary("01010101"))
	end)

	it("should match numbers", function()
		assert.is_false(dut:binary("10"))
		assert.is_false(dut:binary("010"))
		assert.is_false(dut:binary("123"))
	end)
end)
