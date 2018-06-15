class Hazel < Formula
  desc "A scaffolding tool that'll help you kickstart new projects with ease."
  homepage "https://github.com/pkrll/hazel"
  url "https://github.com/pkrll/Hazel/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "20034fd106c2cf6ac7cef0ee2da0a5c1ead71d2958556b8590bb694da489e27e"
  head "https://github.com/pkrll/Hazel.git"

  def install
    system "make", "install"
  end
end
