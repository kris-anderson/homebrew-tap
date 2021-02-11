class Awsprofile < Formula
  desc "Utility that allows for easy switching and management of AWS CLI profiles"
  homepage "https://github.com/kris-anderson/awsprofile"
  url "https://github.com/kris-anderson/awsprofile/releases/download/v0.1.3/awsprofile.tar.gz"
  sha256 "40ee365810b94885cf0d897826c17e0746fcaa7c9b19fb7ea9274e7fbd38df0b"
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
