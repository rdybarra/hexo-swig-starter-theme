<header>
  <img src="{{ theme.header_image }}" style="max-width: 100%" />
  <h1><a href="{{ url_for() }}">{{ config.title }}</a></h1>
  {% include 'primary-nav.swig' %}
  {% include 'social-media.swig' %}
  {% include 'search-form.swig' %}
  {% include 'rss-feed.swig' %}
</header>