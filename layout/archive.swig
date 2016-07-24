{% extends 'layout-primary.swig' %}

{% block body_class %}archive{% endblock %}

{% block content %}
  {% if page.archive && page.month && page.year %}
    {% set title = 'Posts from <span>' + page.month + ' / ' + page.year + '</span>' %}
  {% elseif page.category %}
    {% set title = 'Posts about <span>' + page.category + '</span>' %}
  {% elseif page.tag %}
    {% set title = 'Posts about <span>' + page.tag + '</span>' %}
  {% else %}
    {% set title = 'Archives' %}
  {% endif %}

  <h1>{{ title }}</h1>

  {% include '_partial/post-list.swig' %}
{% endblock %}