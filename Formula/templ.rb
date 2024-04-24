class Templ < Formula
  desc "A templating tool that downloads git repositories."
  homepage "https://github.com/PlayTechnique/templ"
  url "https://github.com/PlayTechnique/templ/archive/refs/tags/0.2.1.tar.gz"
  sha256 "3dcca7614802e58eb053f8e8f235a2109f4834844f8dbbe504c87ebdac0100e9"
  license "BSD-3-Clause"
  version "0.2.1"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
