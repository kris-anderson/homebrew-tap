class Awsprofile < Formula
  desc "Tool that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.3.2/awsprofile.tar.gz"
  sha256 "143a31489e1a2724a8634a5b5345f75cb44f2f381b2d26c7cc969e932b6c3296"
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
