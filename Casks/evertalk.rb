cask "evertalk" do
  version "2.1.2"
  sha256 "348a3bf3b3198cefe73b9da249356909a303d40688cb7a13348d39d10fbb2e6d"

  url "https://github.com/Ram902-bot/evertalk/releases/download/v#{version}/Evertalk-#{version}.zip"
  name "Evertalk"
  desc "Privacy-first local voice-to-text for Mac"
  homepage "https://github.com/Ram902-bot/evertalk"

  app "Evertalk.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Evertalk.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Evertalk",
    "~/Library/Caches/Evertalk",
    "~/Library/Preferences/com.ram902.evertalk.plist",
  ]
end
