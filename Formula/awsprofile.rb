class Awsprofile < Formula
  desc "Tool that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/aws-profile-switcher"
  url "https://github.com/kris-anderson/aws-profile-switcher/releases/download/v0.2.12/awsprofile.tar.gz"
  sha256 "4016c230c9131e248da387a75c72c9f56121d37b8aeb287d451088b081ad79a2"
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
