<!-- Diqus -->
{% if (config.disqus_shortname) %}
  <script>
    var disqus_shortname = '{{ config.disqus_shortname }}';
    {% if (page.permalink) %}
      var disqus_url = '{{ page.permalink }}';
    {% endif %}

    var disqus_src = '//' + disqus_shortname + '.disqus.com/';
    {% if page.comments %}
      disqus_src = disqus_src + 'embed.js';
    {% else %}
      disqus_src = disqus_src + 'count.js';
    {% endif  %}

    (function(){
      var dsq = document.createElement('script');
      dsq.type = 'text/javascript';
      dsq.async = true;
      dsq.src = disqus_src;
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
  </script>
{% endif %}

<!-- Google Analytics -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', '{{ theme.google_analytics }}', 'auto');
    ga('send', 'pageview');
</script>