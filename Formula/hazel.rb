class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.0.2.tar.gz"
  version "1.0.2"
  sha256 "57510185b8b8ed40640ed9f1e1e582fe09146e857f0d4987696d811f601aa52c"
  head "https://github.com/pkrll/Hazel.git"

  def install
    system "make", "build_release"
    bin.install ".build/release/hazel"
    system "mkdir -p /Users/`whoami`/.hazel"
    system "cd .assets && cp -r templates /Users/`whoami`/.hazel"
    system "cd .assets/scripts && cp -r completion /Users/`whoami`/.hazel"
  end

  def uninstall
    system "echo haha"
  end

end
