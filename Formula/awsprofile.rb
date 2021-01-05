class Awsprofile < Formula
  desc "Tool that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.3.1/awsprofile.tar.gz"
  sha256 "4024f1dbab72e7f5719caced02181ad4a818a19cfe331981ecd506958f457034"
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
