cask "evertalk" do
  version "2.2.2"
  sha256 "d9045e6d8541c5381a9ca8484b454af4bbe579702b48c857384a7f9563db32e9"

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
