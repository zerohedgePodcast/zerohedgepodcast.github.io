---
layout: rss
title: Podcast
---

{% for post in site.categories.podcast %}
  <item>
    <title>{{ post.title }}</title>
    <description>{{ post.desc }}</description>
    <pubDate>{{ post.datetime }}</pubDate>
    <enclosure url="https://zerohedgepodcast.github.io/assets/audio/{{ post.audio }}.mp3"
               type="audio/mpeg" length="{{ post.length }}"/>
    <itunes:duration>{{ post.duration }}</itunes:duration>
    <guid isPermaLink="false">{{ post.audio }}</guid>
  </item>
{% endfor %}
