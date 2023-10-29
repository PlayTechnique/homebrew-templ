class Templ < Formula
  desc "A templating tool that downloads git repositories."
  homepage "https://github.com/PlayTechnique/templ"
  url "https://github.com/PlayTechnique/templ/archive/refs/tags/0.1.4.tar.gz"
  sha256 "eb2153dd04e9f4daef7e16c7882ab27a9f8e5a4abfb65b0165cc2253fc7fa4c8"
  license "BSD-3-Clause"
  version "0.1.4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
