cask "controllerkeys" do
  version "2.7.2"
  sha256 "1a504c412e9db8a1d8d866db703c38f90db7451e5e441a984a25538c7c36cc59"

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
