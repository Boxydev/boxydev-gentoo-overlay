# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3

DESCRIPTION="A delightful community-driven (with 1,000+ contributors) framework for managing your zsh configuration. Includes 200+ optional plugins (rails, git, OSX, hub, capistrano, brew, ant, php, python, etc), over 140 themes to spice up your morning, and an auto-update tool so that makes it easy to keep up with the latest updates from the community."
HOMEPAGE="https://github.com/robbyrussell/oh-my-zsh"
SRC_URI=""
EGIT_REPO_URI="git://github.com/robbyrussell/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="app-shells/zsh"
RDEPEND="${DEPEND}"

src_prepare() {
    default
    cp templates/zshrc.zsh-template zshrc
    epatch "${FILESDIR}/0001-zshrc.patch"
}

src_install() {
    insinto /usr/share/${PN}
    doins -r *
}

pkg_postinst() {
    elog "You have to execute 'cp /usr/share/oh-my-zsh/zshrc ~/.zshrc' to use it."
}
