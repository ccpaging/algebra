#!/bin/sh

APP_DIR="$(dirname $0)/.."
cd ${APP_DIR}

MD="markdown"
MDFLAGS="-T"
SOURCE="README.md"
TARGET="index.html"

echo "== Build index.html ... =="

cat > ${TARGET} <<-EOF
---
layout: default
title: CCPAGING &bull; Algebra self-learning.
overview: true
---

<section class="intro">
    <div class="grid">
        <div class="unit whole center-on-mobiles">
            <p class="first">{{ site.description }}</p>
        </div>
    </div>
</section>


<section class="features">
    <div class="grid" >
        <div class="unit four-fifths">
EOF

${MD} ${MDFLAGS} ${SOURCE} >> ${TARGET}

cat >> ${TARGET} <<-EOF
        </div>
        <div class="clear"></div>    
    </div>
</section>
EOF

echo "== Finished =="
