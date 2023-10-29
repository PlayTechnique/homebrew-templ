# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Templ < Formula
  desc "A templating tool that downloads git repositories."
  homepage "https://github.com/PlayTechnique/templ"
  url "https://github.com/PlayTechnique/templ/archive/refs/tags/0.1.4.tar.gz"
  sha256 "eb2153dd04e9f4daef7e16c7882ab27a9f8e5a4abfb65b0165cc2253fc7fa4c8"
  license "BSD-3-Clause"
  version "0.1.4"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test templ`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
