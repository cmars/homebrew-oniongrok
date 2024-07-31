# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.1.5"

  depends_on "tor"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.1.5/onionpipe_1.1.5_darwin_amd64.tar.gz"
    sha256 "9e33c61c200ed0921fd7c3610878baf41ba9449079c72b51dd3aec84da81dc0b"

    def install
      bin.install "onionpipe"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Onionpipe
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cmars/onionpipe/releases/download/v1.1.5/onionpipe_1.1.5_linux_amd64.tar.gz"
        sha256 "64484698c8631c89767604b3b60e9e0eb6aaf5ab402c8430cfdcaa6f68c879ce"

        def install
          bin.install "onionpipe"
        end
      end
    end
  end
end
