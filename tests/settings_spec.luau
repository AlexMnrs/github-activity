--!nonstrict

local Settings = require("../github-activity/lib/settings")

local function equal(actual, expected, message)
  if actual ~= expected then
    error(string.format("%s: expected %s, got %s", message, tostring(expected), tostring(actual)))
  end
end

equal(Settings.refreshIntervalMs("15"), 15 * 60 * 1000, "15 minute refresh interval")
equal(Settings.refreshIntervalMs("30"), 30 * 60 * 1000, "30 minute refresh interval")
equal(Settings.refreshIntervalMs("60"), 60 * 60 * 1000, "60 minute refresh interval")
equal(Settings.refreshIntervalMinutes("15"), 15, "15 minute display interval")
equal(Settings.refreshIntervalMinutes("30"), 30, "30 minute display interval")
equal(Settings.refreshIntervalMinutes("60"), 60, "60 minute display interval")

equal(Settings.refreshIntervalMs(nil), 30 * 60 * 1000, "missing refresh interval defaults to 30 minutes")
equal(Settings.refreshIntervalMs("5"), 30 * 60 * 1000, "unsupported refresh interval defaults to 30 minutes")
equal(Settings.refreshIntervalMs("abc"), 30 * 60 * 1000, "malformed refresh interval defaults to 30 minutes")
equal(Settings.refreshIntervalMs(15), 30 * 60 * 1000, "numeric refresh interval defaults to 30 minutes")
equal(Settings.refreshIntervalMs({}), 30 * 60 * 1000, "table refresh interval defaults to 30 minutes")
equal(Settings.refreshIntervalMinutes(nil), 30, "missing display interval defaults to 30 minutes")

print("GitHub Activity settings tests passed")
