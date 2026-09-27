cask "evertalk" do
  version "2.2.1"
  sha256 "c2e056e55a1edcbadb2923acc956a28146a9724178f78951ff3ff9a9acc8e438"

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
