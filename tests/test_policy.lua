package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 68, capacity = 79, latency = 20, risk = 22, weight = 6 }
assert(policy.score(signal_case_1) == 59)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 62, capacity = 71, latency = 23, risk = 20, weight = 8 }
assert(policy.score(signal_case_2) == 54)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 68, capacity = 70, latency = 11, risk = 10, weight = 4 }
assert(policy.score(signal_case_3) == 137)
assert(policy.classify(signal_case_3) == "review")
