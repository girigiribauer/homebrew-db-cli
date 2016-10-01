require 'formula'

REPOSITORY_URL='https://github.com/girigiribauer/db-cli'
HOMEBREW_DBCLI_VERSION='0.1.24'

class DbCli < Formula
  desc '`db` command line tools (Docker based)'
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_DBCLI_VERSION}/db-darwin-amd64.tar.gz", :tag => "v#{HOMEBREW_DBCLI_VERSION}"
  sha256 '6bfc2486db1b17ab93d3b3783f5981b3676299319ff9208efd599a4843599a06'
  head REPOSITORY_URL, :branch => 'master'
  version HOMEBREW_DBCLI_VERSION

  def install
    bin.install 'db'
  end
end
