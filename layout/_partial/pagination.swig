{% if page.total > 1 %}
  <nav>
    {{ paginator() }}
  </nav>
{% endif %}