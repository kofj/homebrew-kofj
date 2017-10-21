class V2rayCore < Formula
  desc "A platform for building proxies to bypass network restrictions."
  homepage "https://www.v2ray.com/"
  url "https://github.com/v2ray/v2ray-core/releases/download/v2.41/v2ray-macos.zip"
  version "v2.41"
  sha256 "0c49b05787bce5a8a181b4d2df2df1a4617c7d617165f6fbff2657fba0bc8439"

  def install
    bin.install "v2ray"

    etc.install "config.json"
  end

  plist_options :manual => "v2ray -config=#{HOMEBREW_PREFIX}/etc/config.json"

  def plist; <<-EOS.undent
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/v2ray</string>
        <string>-config</string>
        <string>#{etc}/config.json</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
    </dict>
  </plist>
  EOS
end
  
  test do
    system "#{bin}/v2ray", "-version"
  end
end
