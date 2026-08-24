cask "evertalk" do
  version "2.1.0"
  sha256 "a0a70213d5979db99c04d30b5ed8a899db8463710d52f5ca641d8fc094f6d177"

  url "https://github.com/Ram902-bot/evertalk/releases/download/v#{version}/Evertalk.zip"
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
    "~/Library/Preferences/com.everstage.Evertalk.plist",
  ]
end
