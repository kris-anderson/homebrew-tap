class Awsprofile < Formula
  desc "Tool that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.3.4/awsprofile.tar.gz"
  sha256 "ca63451f80c29650575440d31cbac901fcf05d13e445d79def32fa0fc918ce67"
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
