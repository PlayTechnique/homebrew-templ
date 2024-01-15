class Templ < Formula
  desc "A templating tool that downloads git repositories."
  homepage "https://github.com/PlayTechnique/templ"
  url "https://github.com/PlayTechnique/templ/archive/refs/tags/0.2.0.tar.gz"
  sha256 "f2709c0b8a44caf14a3d2c0453b70357810bac783f0c7eebdc0987dd0cc82da1"
  license "BSD-3-Clause"
  version "0.2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
