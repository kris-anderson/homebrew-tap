class Awsprofile < Formula
  desc "Utility that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/awsprofile"
  url "https://github.com/kris-anderson/awsprofile/releases/download/v0.1.0/awsprofile.tar.gz"
  sha256 "b9b7b9520612e604bb0938b3054610c86c3c3e840ced9b095c7bde660466ccff"
  license "MIT"
  head "git@github.com:kris-anderson/awsprofile.git", branch: "main"

  def install
    bin.install "awsprofile"
    man1.install "docs/awsprofile.1"
  end

  test do
    system "#{bin}/awsprofile", "--version"
  end
end
