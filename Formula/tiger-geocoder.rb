# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TigerGeocoder < Formula
  desc "A Geocoder for US Census TIGER data"
  homepage ""
  url "https://github.com/jmarin/tiger-geocoder/archive/v0.1.1.tar.gz"
  sha256 "c5fdf88079694088ff0b7793f45c52a1c78d9d6d4812b6210aa42b035a27b8e1"
  head "https://github.com/jmarin/tiger-geocoder.git"
  depends_on "rust" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    
    system "cargo", "install", "--root", prefix
      
    # system "cmake", ".", *std_cmake_args
  end

  test do
    system "#{bin}/geocoder"
  end
end
