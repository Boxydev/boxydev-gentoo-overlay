# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Fish-like autosuggestions for zsh"
HOMEPAGE="https://github.com/zsh-users/zsh-autosuggestions"
SRC_URI=""
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="app-shells/zsh"
RDEPEND="${DEPEND}"

src_install() {
    insinto /usr/share/zsh/plugins/${PN}
    doins -r *
}

pkg_postinst() {
    elog "To activate zsh-autosuggestions add the following line at the end of ~/.zshrc:\r
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
}
