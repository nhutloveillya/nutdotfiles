local mp = require("mp")

mp.register_event("shutdown", function()
	os.execute("rm -rf ~/.cache/webtorrent")
end)
