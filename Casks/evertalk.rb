cask "evertalk" do
  version "2.1.1"
  sha256 "cc6aabfb688e08c13bdf3ea69ac76ef8b751fa577b0f1145e639643ec72bf921"

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
