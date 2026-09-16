cask "controllerkeys" do
  version "2.8.0"
  sha256 "ff8d47ebbffbb72013d9452f8aaaf228b11e9f2f9e7f244fcd023c8718b0d9a6"

  url "https://github.com/NSEvent/xbox-controller-mapper/releases/download/v#{version}/ControllerKeys-#{version}.dmg"
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
