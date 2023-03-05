local Completions = require("cmp_kitty.completions")

describe("add", function()
	local dut = Completions.new()
	dut:set_item_lifetime(60)

	it("should start empty", function()
		assert.same(0, dut:len())
	end)

	it("should add item", function()
		dut:add("a")
		assert.same(true, dut:contains("a"))
		assert.same(1, dut:len())
	end)

	it("should add item only once", function()
		dut:add("a")
		dut:add("a")
		dut:add("a")
		assert.same(true, dut:contains("a"))
		assert.same(1, dut:len())
	end)

	it("should add multiple items", function()
		dut:add("a")
		dut:add("b")
		dut:add("c")
		assert.same(3, dut:len())
	end)
end)
