<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	{if isset($style)}<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />{/if}
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
</head>
<body {if isset($on_load)}{$on_load}{/if}>
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>
	<div id="header">
		<div class="wrapper">
			<div id="logo">
				<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" border="0" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="110px"{/if} />
		</a>
			</div>
		</div>
	</div>
		<div id="toolbar">
        	<div class="wrapper">
            	<div id="topnav">
				<ul>
		{section name=item loop=$menu}
					<li><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
		{/section}
				</ul>
            	</div>
            </div>
		</div>
	<div id="main">
		<div class="wrapper">
<div id="inferno_tools">
				<div id="time">
					{if isset($message)}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="page-title">{$page_title}</div>
				</div>
			</div>


		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{section name=item loop=$context_divs}
		<div class="context_element" id="context_{$smarty.section.item.index}">{$context_divs[item]}</div>
{/section}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s<!-- /profile --></div>
{/if}
		<div class="counter"></div>
	</div>
	</div>
<div id="footer">
		<ul class="reset">
			<li class="copyright"><strong>Inferno</strong> Design By <a href="http://www.dzinerstudio.com" target="_blank">DzinerStudio</a></li>
<li>Modified to EDK4 theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a></li>
		</ul>
	</div>
</body>
</html>
