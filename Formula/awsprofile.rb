class Awsprofile < Formula
  desc "Tool that allows for easier switching and management of AWS profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.2.8/awsprofile.tar.gz"
  sha256 "15ab7cafb9fb9055a6812f52d821bf95b7b1e69ea3d9d3be8740d1425d06055d"
  license "MIT"
  head "git@github.com:kris-anderson/aws-profile-switcher.git", branch: "main"

  def install
    bin.install "awsprofile"
    man1.install "docs/awsprofile.1"
  end

  test do
    system "#{bin}/awsprofile", "--version"
  end
end
