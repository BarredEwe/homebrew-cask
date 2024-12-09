cask "snowfall" do
    version '0.0.3'
    sha256 ""

    name "Snowfall"
    desc "Simple interactive snowfall for Mac OS app written on SwiftUI and Metal."
    homepage "https://github.com/BarredEwe/Snowfall"
    url "https://github.com/BarredEwe/Snowfall/releases/download/#{version}/Snowfall.zip"
    

    depends_on macos: ">= :ventura" # macOS 13

    postflight do
      system "xattr -d com.apple.quarantine #{staged_path}/Snowfall-v#{version}/bin/aerospace"
      system "xattr -d com.apple.quarantine #{appdir}/Snowfall.app"
    end

    app "Snowfall/Snowfall.app"

    test do

    end
end
