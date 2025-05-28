---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: false
description: "SEO description here"
tags: ["tag1", "tag2"]
categories: ["category"]
images: ["/images/posts/{{ .Name }}/social-card.png"]
---
