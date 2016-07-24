{% set title = page.title %}
{% if !title %}
  {% set title = config.title %}
{% endif %}

<title>{{ title }}</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="{{ url_for(theme.favicon) }}">
{{ css('css/styles') }}