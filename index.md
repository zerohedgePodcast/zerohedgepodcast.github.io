---
layout: default
title: Home
---

## Recent Podcast Episodes

<ul class="posts">
  {% for post in site.categories.podcast limit:10 %}
    <li class="post">
      <a href="{{ post.url }}">{{ post.title }}</a>
      <time class="publish-date" datetime="{{ post.date | date: '%F-%H-%M-%S' }}">
        {{ post.date | date: "%B %-d, %Y %X" }}
      </time>
    </li>
  {% endfor %}
</ul>

[See all podcast episodes](/posts)
