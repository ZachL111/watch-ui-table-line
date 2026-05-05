package = "watch-ui-table-line"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for table scenarios with log and snapshot fixtures, replay consistency checks, and offline replay mode.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
