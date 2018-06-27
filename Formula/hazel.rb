class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.1.0.tar.gz"
  version "1.1.0"
  sha256 "9946ac4bb6cec9ec7336d708226cbbeec606c0dd1a08e3976212e1969453812e"
  head "https://github.com/pkrll/Hazel.git"

  def install
    system "make", "build_release"
    bin.install ".build/release/hazel"
    system "mkdir -p /Users/`whoami`/.hazel"
    system "cd .assets && cp -r templates /Users/`whoami`/.hazel"
    system "cd .assets && cp -r templates /Users/`whoami`/.hazel"
    system "cd .assets && cp -n placeholders.json /Users/`whoami`/.hazel"
    bash_completion.install ".assets/scripts/completion/bash/hazel"
    zsh_completion.install ".assets/scripts/completion/zsh/_hazel"
  end

end
