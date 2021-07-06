#!/usr/bin/env bash

cd $(dirname $0)

post_dir="$(pwd)/../_posts/"
name="$1"
	
touch "$post_dir"/$(date "+%Y-%m-%d")-"${name}".markdown
echo -e '---
layout:     post
title:      "Home Building 规章"
subtitle:   " \"无规矩不成方圆\""
'"date:       $(date "+%Y-%m-%d %H:%M:%S")
"'author:     "zhy"
catalog: true
header-img: "img/home-bg.jpg"
tags:
    - home
---' > "$post_dir"/$(date "+%Y-%m-%d")-"$name".markdown
