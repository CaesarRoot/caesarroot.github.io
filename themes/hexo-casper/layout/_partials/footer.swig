{# footer #}

{% include "search.swig" %}
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js">
</script>
<footer class="site-footer outer">
	<div class="site-footer-content inner">
		<div class="copyright">
			<a href="{{ config.root }}" title="{{ config.title }}">{{ config.title }} &copy; {{ date(Date.now(), 'YYYY') }}  </a>
			{% if is_post() %}
				{% if theme.comment and theme.valine.visitor %}
			        <span hidden="true" id="{{ url_for(page.path) }}" class="leancloud-visitors" data-flag-title="{{ page.title }}">
			            <span>阅读量 </span>
			            <span class="leancloud-visitors-count">0</span>
			        </span>
	    		{% endif %}
    		{% endif %}
			<span id="busuanzi_container_site_pv">
			    本站总访问量 <span id="busuanzi_value_site_pv"></span> 次
			</span>
		</div>
		<nav class="site-footer-nav">
			{% for key,link in theme.footer %}
			<a href="{{ link }}" title="{{ key }}" target="_blank" rel="noopener">{{ key }}</a>
			{% endfor %}
			{{ link_to('https://hexo.io', 'Hexo', {external: true})}}
			{{ link_to('https://github.com/xzhih/hexo-theme-casper', 'Casper', {external: true})}}
		</nav>
	</div>
</footer>