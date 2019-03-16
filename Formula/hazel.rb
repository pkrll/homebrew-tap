class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.1.2.zip"
  version "1.1.2"
  sha256 "3acf6b5c2eaaa0aa6c6f3c85fe597e2afd66913f7037120ebb4aadcf9d22152b"
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
