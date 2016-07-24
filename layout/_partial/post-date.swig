<p>{{ date(post.date, date_format) }}</p>

{#
  Show the updated date if the update date is different from the creation date
#}
{% if (date(post.date, date_format) !== date(post.updated, date_format)) %}
    <p>Updated:{{ date(post.updated, date_format) }}</p>
{% endif %}