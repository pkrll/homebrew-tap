class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "eecbeff8d3fe0f8039e5b4056ad391e9ebc4a1a73dbfae799aaf25f289854703"
  head "https://github.com/pkrll/Hazel.git"

  def install
    system "make", "build_release"
    bin.install ".build/release/hazel"
    system "mkdir -p /Users/`whoami`/.hazel"
    system "cd .assets && cp -r templates /Users/`whoami`/.hazel"
    bash_completion.install ".assets/scripts/completion/bash/hazel"
    zsh_completion.install ".assets/scripts/completion/zsh/_hazel"
  end

end
