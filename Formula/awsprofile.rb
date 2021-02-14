class Awsprofile < Formula
  desc "Utility that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/awsprofile"
  url "https://github.com/kris-anderson/awsprofile/releases/download/v0.1.4/awsprofile.tar.gz"
  sha256 "b4d5a40dd6e2d9e529878d13eab9ef221c158d9f0af83d4414f00ac1ef58a72c"
  license "MIT"
  head "git@github.com:kris-anderson/awsprofile.git", branch: "main"

  def install
    bin.install "awsprofile"
    man1.install "docs/awsprofile.1"

    bash_completion.install "completions/bash/awsprofile"
    zsh_completion.install "completions/zsh/_awsprofile"
    fish_completion.install "completions/fish/awsprofile.fish"
  end

  test do
    system "#{bin}/awsprofile", "--version"
  end
end
