# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TigerGeocoder < Formula
  desc "A Geocoder for US Census TIGER data"
  homepage ""
  url "https://github.com/jmarin/tiger-geocoder/archive/v0.1.0.tar.gz"
  sha256 "64cc93f33fdf59c60da6602ab19a34dddbbecff68ccca5b21b6fcc0b3ce20bf6"
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
