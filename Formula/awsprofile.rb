class Awsprofile < Formula
  desc "Utility that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/awsprofile"
  url "https://github.com/kris-anderson/awsprofile/releases/download/v0.1.1/awsprofile.tar.gz"
  sha256 "ec24847b8035755dd0d7adad4f7ac53c56f4880abae635a9a7b655e853dd08c8"
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
