<!DOCTYPE html>
<html>
  <head>
    {%include '_partial/head.swig' %}
  </head>

  <body class="{% block body_class %}{% endblock %}">
    {% include '_partial/header.swig' %}

    <main>
      {% block content %}{% endblock %}
    </main>

    <aside>
      {% block aside %}
        <h2>Categories</h2>
        {{ list_categories() }}

        <h2>Archives</h2>
        {{ list_archives() }}

        <h2>Tags</h2>
        {{ list_tags() }}

        {% if page.total > 1 %}
          <h2>Recent Posts</h2>
          {{ list_posts({ order: -1, amount: 2}) }}
        {% endif %}
      {% endblock %}
    </aside>

    {% include '_partial/footer.swig' %}
    {% include '_partial/scripts.swig' %}
  </body>
</html>