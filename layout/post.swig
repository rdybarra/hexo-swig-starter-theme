{% extends 'layout-primary.swig' %}

{% block body_class %}{{ page.layout }}{% endblock %}

{% block content %}
  {% set post = page %}

  <article>
    <section>
      {% include '_partial/post-title.swig' %}
      {% include '_partial/post-date.swig' %}
      {% include '_partial/post-categories.swig' %}
      {% include '_partial/post-tags.swig' %}
    </section>

    <section>
      {{ toc(page.content) }}
    </section>

    <section>
      {{ page.content }}
    </section>

    {% include '_partial/disqus-comments.swig' %}
  </article>

{% endblock %}
