cask "evertalk" do
  version "2.2.0"
  sha256 "9ce4a026a8542c1da41d850b47126b662ea462cd482cf9f82f80e27bda0d30d0"

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
