{% extends 'layout-primary.swig' %}

{% block body_class %}{{ page.layout }}{% endblock %}

{% block content %}

  <article>
    <h1>{{ page.title }}</h1>

    <section>
      {{ page.content }}
    </section>
  </article>

{% endblock %}
