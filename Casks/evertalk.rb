cask "evertalk" do
  version "1.0.0"
  sha256 "417bc7843773e0889979d01d6a5199b84e506eb1c5fa2259e4d804177234609d"

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
