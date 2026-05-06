package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 55, slack = 22, drag = 19, confidence = 77 }
assert(review.score(item) == 152)
assert(review.lane(item) == "ship")
