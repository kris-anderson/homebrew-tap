class Awsprofile < Formula
  desc "Utility that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/awsprofile"
  url "https://github.com/kris-anderson/awsprofile/releases/download/v0.1.1/awsprofile.tar.gz"
  sha256 "647b96d0a3bbbe8678d06b82ccb926d196409656aa11e995d6a9ff954246ab9d"
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
