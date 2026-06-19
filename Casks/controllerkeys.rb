cask "controllerkeys" do
  version "2.2.1"
  sha256 "898340c0014d95e064a2dbf1b055fab252be367270389ee69db63f455ad00d00"

  url "https://github.com/NSEvent/xbox-controller-mapper/releases/download/v#{version}/ControllerKeys-#{version}.dmg",
      verified: "github.com/NSEvent/xbox-controller-mapper/"
  name "ControllerKeys"
  desc "Maps game controllers to keyboard, mouse, scrolling, and macros"
  homepage "https://www.kevintang.xyz/apps/controller-keys"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ControllerKeys.app"

  zap trash: [
    "~/.config/controllerkeys",
    "~/Library/Caches/KevinTang.XboxControllerMapper",
    "~/Library/HTTPStorages/KevinTang.XboxControllerMapper",
    "~/Library/Preferences/KevinTang.XboxControllerMapper.plist",
  ]
end
