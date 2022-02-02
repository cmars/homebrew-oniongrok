# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oniongrok < Formula
  desc ""
  homepage ""
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cmars/oniongrok/releases/download/v0.1.4/oniongrok_0.1.4_darwin_amd64.tar.gz"
      sha256 "6ff49d4a05613d39a6b927ef9d73f4dd2a4368ea600b98295b579013996156f3"

      def install
        bin.install "oniongrok"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cmars/oniongrok/releases/download/v0.1.4/oniongrok_0.1.4_linux_amd64.tar.gz"
      sha256 "59422b8c34ce6a76b35567c72fdb21e9980ef1fbfacb47f37b6dcf5531812284"

      def install
        bin.install "oniongrok"
      end
    end
  end

  depends_on "tor"
end
