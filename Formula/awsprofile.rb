class Awsprofile < Formula
  desc "Tool that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.3.3/awsprofile.tar.gz"
  sha256 "64c932a20a6e028df08f15d3334a662fabd21b3eafc2fa6da1e2d070e8119c40"
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
