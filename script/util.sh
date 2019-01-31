#!/usr/bin/env bash

cd $(dirname $0)

post_dir="$(pwd)/../_posts/"
name="$1"
	
touch "$post_dir"/$(date "+%Y-%m-%d")-${name}.markdown
echo -e '---
layout:     post
title:      "aws 搭建vpn"
subtitle:   " \"2019新年第一篇\""
'"date:       $(date "+%Y-%m-%d %H:%M:%S")
"'author:     "zhy"
header-img: "img/home-bg.jpg"
tags:
    - tool
---' > "$post_dir"/$(date "+%Y-%m-%d")-$name.markdown
