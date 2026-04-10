class Rpr < Formula
  include Language::Python::Virtualenv

  desc "Stealth PR reviewer — looks like you wrote every word"
  homepage "https://github.com/dedev-llc/rpr"
  # TODO: After the first PyPI publish, replace these with the real values.
  # Homebrew rejects the /source/r/rpr/ shortcut URL — you must use the
  # canonical hashed URL shown on https://pypi.org/project/rpr/#files
  # under the "Source Distribution" row.
  #
  #   1. Visit https://pypi.org/project/rpr/0.1.0/#files
  #   2. Right-click "rpr-0.1.0.tar.gz" → Copy Link → paste below as `url`
  #   3. Run: brew fetch --build-from-source Formula/rpr.rb
  #      (or: curl -sL <that-url> | shasum -a 256)
  #   4. Paste the sha256 below
  url "https://files.pythonhosted.org/packages/bb/85/2367118e452bc77552ba80ceef4b06523aa954e5cfd7c48d8c541b8e73f3/rpr-0.1.3.tar.gz"
  sha256 "58cd813c46fa0d46c9087a7866c0d1a5388d6bc050a7c5d68fe976b5744b9c9d"
  license "MIT"

  depends_on "gh"
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: rpr", shell_output("#{bin}/rpr --help")
  end
end
