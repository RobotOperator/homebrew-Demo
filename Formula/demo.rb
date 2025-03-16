class demo < Formula
  include Language::Python::Virtualenv

  desc "Demo presentation"
  homepage "https://github.com/RobotOperator/Demo"
  url "http://192.168.0.65:8080/demo.tar.gz"
  sha256 "e4bdc15d5b57eab9dba811529ec2e5631145ff1d2776facba4ca24c6094c394c"
  version "1.31.1"

  depends_on "python@3.11"

  resource "pyobjc-framework-OSAKit" do
    url "https://files.pythonhosted.org/packages/8a/ab/5df750cc0a30c24233ad37608ad896a2759ef65ec80eebcd10e52dcdbf36/pyobjc_framework_osakit-10.3.tar.gz"
    sha256 "c784228de4d8838e37ef0d01c031879f863c7839493e227ab3bcc877926dd639"
  end

  def install
    virtualenv_install_with_resources
  end
end
