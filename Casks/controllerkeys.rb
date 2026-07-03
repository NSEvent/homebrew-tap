cask "controllerkeys" do
  version "2.5.1"
  sha256 "ac8da579a371052d5b70e6a9b04a4731fbd7c1dabac605800c6e6b1cdb248765"

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
