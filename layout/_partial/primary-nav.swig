<nav>
  <ul>
    {% for nav_item in theme.primary_nav %}

      {% set className = '' %}
      {% if loop.first %}
        {% set className = 'first' %}
      {% elseif loop.last %}
        {% set className = 'last' %}
      {% endif %}

      {% set currentPath = '/' + path.replace('/index.html', '') %}
      {% set pathMatchesHomePath = url_for(nav_item) == '/' && is_home() %}

      {% if url_for(nav_item) == currentPath || pathMatchesHomePath %}
        {% set className = className + ' current' %}
      {% endif %}

      <li class="{{ className }}">
        <a href="{{ url_for(nav_item)}}">{{ loop.key }}</a>
      </li>

    {% endfor %}
  </ul>
</nav>
