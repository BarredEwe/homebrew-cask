cask "snowfall" do
    version '0.0.4'
    sha256 "13c0736cd9484e6818796aae98f6dc5801a7421cd079c7b1030c774f8b793539"

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
