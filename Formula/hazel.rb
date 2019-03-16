class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.1.1.tar.gz"
  version "1.1.1"
  sha256 "89377e418f56e9d42fb5874b2a30c57f22bd1cb9db5dd1a404590096c59a4408"
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
