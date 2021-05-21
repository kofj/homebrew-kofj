class Font2png < Formula
  desc "A platform for building proxies to bypass network restrictions."
  homepage "https://blog.kongfanjian.com/"
  url "https://github.com/kofj/font2png/releases/download/v1.0.0/font2png-macos.tar.gz?20210522"
  version "v1.0.0"
  sha256 "c18bacb459a533e1e97b16302a9dcf7162af748bda11703d8145561b86f53248"

  def install
    bin.install "font2png"
  end
  
  test do
    system "#{bin}/font2png", "-version"
  end
end
