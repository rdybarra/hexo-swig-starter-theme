<section>
  {% for post in page.posts %}
    {% include '../_partial/post-list-item.swig' %}
  {% endfor %}

  {% include '../_partial/pagination.swig' %}
</section>