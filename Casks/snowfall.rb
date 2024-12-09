cask "snowfall" do
    version '0.0.3'
    sha256 "5b56a9ae73fde9176a3daddcf15dad86c264f81f"

    name "Snowfall"
    desc "Simple interactive snowfall for Mac OS app written on SwiftUI and Metal."
    homepage "https://github.com/BarredEwe/Snowfall"
    url "https://github.com/BarredEwe/Snowfall/releases/download/#{version}/Snowfall.zip"
    

    depends_on macos: ">= :ventura" # macOS 13

    postflight do
      system "xattr -d com.apple.quarantine #{appdir}/Snowfall.app"
    end

    app "Snowfall/Snowfall.app"
end
