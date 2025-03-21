class Demo < Formula
  include Language::Python::Virtualenv

  desc "Demo presentation"
  homepage "https://github.com/RobotOperator/homebrew-demo"
  url "http://192.168.0.65:8080/demo.tar.gz"
  sha256 "3202ee43b8f981986b09900d2dd264e7a8cfbfd0b23e9bb00afe151387072407"
  version "1.31.1"

  depends_on "python@3.12"

  resource "pyobjc-framework-OSAKit" do
    url "https://files.pythonhosted.org/packages/8a/ab/5df750cc0a30c24233ad37608ad896a2759ef65ec80eebcd10e52dcdbf36/pyobjc_framework_osakit-10.3.tar.gz"
    sha256 "c784228de4d8838e37ef0d01c031879f863c7839493e227ab3bcc877926dd639"
  end

  def install
    virtualenv_install_with_resources
    ohai "+ Validating Install Please Wait +"
    system "#{ENV['HOMEBREW_CELLAR']}/demo/1.31.1/libexec/bin/python", "#{Dir.pwd}/demo.py"
    ohai "+ Successful Install +"
    ohai "[i]- Open a new tab to ensure path is updated -[i]"
  end
end
