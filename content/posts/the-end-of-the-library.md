---
title: "The End of the Library"
date: 2025-05-28T22:36:44+02:00
draft: false
description: "Why AI coding assistants like Claude Code are making traditional software libraries obsolete - a firsthand experience"
tags: ["ai", "coding", "libraries", "software-engineering"]
categories: ["technology"]
images: ["/images/posts/the-end-of-the-library/social-card.png"]
bsky: "https://bsky.app/profile/furukama.bsky.social/post/3lqclziuao22y"
---

After spending days (and sleepless nights) coding with my AI assistant [Claude Code](https://claude.ai/code),
I still can't believe this kind of tool we (as humanity) have created.

{{< video src="https://t.gifs.bsky.app/SoL4eCQ5skEAAAP3/anime-sunshine.webm" maxWidth="400px" caption="We may not need this anymore" >}}
Of course, in the realm of coding you can describe it as a quasi-natural
evolution from a) reading docs, how-tos, and manuals -> b) having context-sensitive
help -> c) being able to auto-complete methods, variable names and 
automatically create boilerplate code -> d) having an AI write code for you
line by line -> e) now just providing the specs of the thing you want to build
(you can even [let an LLM write this for you](https://harper.blog/2025/05/08/basic-claude-code/)) and letting the system code. For
GenX digital immigrants who grew up with the command line, it's still awesome to be 
in the loop, but the next generation of coders (vibers?) will just let the system 
do what it thinks is necessary.

One thing especially struck me in working with an AI coding system:
it neither complains about the most mundane chores like renaming stuff en masse nor
gets scared of an enormous amount of work. Like building a replacement for an
Open Source library. That's what I made the AI do. When working with human
coders, there's often a natural growth of software dependencies - i.e. libraries
that are very handy to solve a programming task that otherwise would require a
lot of writing specs, tests, documentation. And would require a lot of debugging.
So you rather include an open source library, read the interface documentation and
are ready to go. Only to discover that it becomes a full-time job watching
out for breaking changes in 100s of libraries. Constantly.

Especially if you only use a fraction of what these libraries offer. Enter AI Coding.
Just give [your](https://claude.ai/code) [favorite](https://openai.com/blog/openai-codex) [Coding](https://github.com/features/copilot) [Agent](https://firebase.google.com/) a clear spec of what you used to have this
library for, show it the code where it was included and let it code an alternative
modular piece of code for you to use that does just what you need it to do and nothing
more. And let the AI care about updating it when the world around it changed. I wouldn't
bet on software libraries being maintained in the coming years like they were in
the past.
