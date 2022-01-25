---
layout: rss
title: Podcast
---

## Podcast
{% for post in site.categories.podcast %}
  <item>
    <title>{{ post.title }}</title>
    <description>{{ post.desc }}</description>
    <pubDate>{{ post.date | date: '%F' }}</pubDate>
    <enclosure url="https://zerohedgepodcast.github.io/_posts/audio/{{ post.title }}.mp3"
               type="audio/mpeg"/>
    <itunes:duration>{{ post.duration }}</itunes:duration>
    <guid isPermaLink="false">dzpodtop10</guid>
  </item>
{% endfor %}
