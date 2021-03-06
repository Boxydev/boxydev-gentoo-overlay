# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils

DESCRIPTION="Lightning-smart PHP IDE"
HOMEPAGE="http://www.jetbrains.com/phpstorm/"
SRC_URI="https://download.jetbrains.com/webide/PhpStorm-${PV}.tar.gz"

LICENSE="Commercial"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
EAP_VERSION="173.4301.34"
S="${WORKDIR}/PhpStorm-${EAP_VERSION}"

src_install() {
    insinto /opt/${PN}
    doins -r *

    fperms a+x /opt/${PN}/bin/phpstorm.sh
    fperms a+x /opt/${PN}/bin/fsnotifier
    fperms a+x /opt/${PN}/bin/fsnotifier64
    fperms a+x /opt/${PN}/bin/fsnotifier-arm
    for i in $(ls ${D}/opt/${PN}/jre64/bin/)
        do
            fperms a+x /opt/${PN}/jre64/bin/${i}
        done;
    dosym /opt/${PN}/bin/phpstorm.sh /usr/bin/${PN}

    doicon "bin/${PN}.png"
    make_desktop_entry "${PN}" "PHP Storm" "${PN}" "Development;IDE"
}
