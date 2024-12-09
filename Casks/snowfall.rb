cask "snowfall" do
    version '0.0.3'
    sha256 "1db4c39e6138c3b500823aba5a1fb252b4f421bb6833417e37e7d29668322b21"

    name "Snowfall"
    desc "Simple interactive snowfall for Mac OS app written on SwiftUI and Metal."
    homepage "https://github.com/BarredEwe/Snowfall"
    url "https://github.com/BarredEwe/Snowfall/releases/download/#{version}/Snowfall.zip"
    

    depends_on macos: ">= :ventura" # macOS 13

    postflight do
      system "xattr -d com.apple.quarantine #{appdir}/Snowfall.app"
    end

    app "Snowfall.app"
end
