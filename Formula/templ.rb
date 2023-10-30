class Templ < Formula
  desc "A templating tool that downloads git repositories."
  homepage "https://github.com/PlayTechnique/templ"
  url "https://github.com/PlayTechnique/templ/archive/refs/tags/0.1.5.tar.gz"
  sha256 "1d4ee96cd5f8724e898dcb8e737f5ba6d924f0cf0c31df4ab6979546aeed1a2f"
  license "BSD-3-Clause"
  version "0.1.5"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
