{% extends 'layout-primary.swig' %}

{% block body_class %}home{% endblock %}

{% block content %}
  {% include '_partial/post-list.swig' %}
{% endblock %}