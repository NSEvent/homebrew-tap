cask "controllerkeys" do
  version "2.10.0"
  sha256 "5363d09cfdfb25e202caa591babedcf58f63fc3d93fccc48f97e0c1b0a10590e"

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
