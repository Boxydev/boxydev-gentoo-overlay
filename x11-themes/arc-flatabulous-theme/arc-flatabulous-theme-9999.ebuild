# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 autotools

DESCRIPTION="Arc theme with Flatabulous window controls."
HOMEPAGE="https://github.com/andreisergiu98/arc-flatabulous-theme"
SRC_URI=""
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="x11-libs/gtk+
	x11-themes/gnome-icon-theme"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	eautoreconf
}
