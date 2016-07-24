<article>
  <section>
    <h2><a href="{{ url_for(post.path) }}">{{ post.title }}</a></h2>
    {% include 'post-date.swig' %}
  </section>
  <section>
    {#
      post.excerpt is everything above <!-- more --> in your post. If you don't have <!-- more -->
      then it will be empty.
    #}

    {{ post.excerpt }}
    <a href="{{ url_for(post.path) }}">Read More</a>

    {#
      Alternatively, we can show the full content.
      {{ post.content }}
    #}
  </section>
</article>