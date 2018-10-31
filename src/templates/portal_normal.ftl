<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<script type="text/javascript" src="${javascript_folder}/pojs.js"></script>

	<#--
	<script src="https://cdnjs.cloudflare.com/ajax/libs/postscribe/2.0.8/postscribe.min.js"></script>
	-->
	<#--
	<#include "${full_templates_path}/twitter.ftl" />
	-->

	<script type="text/javascript" src="https://maps.google.com/maps/api/js"></script>
	<link href="https://code.google.com/apis/maps/documentation/javascript/examples/standard.css" rel="stylesheet" type="text/css" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">

	<header id="banner" role="banner">
		<div class="banner-nav">

			<div class="container-fluid">
				<div id="heading" class="clearfix">
					<div class="heading-inner">

						<h1 class="site-title">
							<a class="" href="${site_default_url}">
								${site_name}
							</a>
						</h1>

						<div class="top-wrap">
							<div class="top-navigation-wrap">
								<#include "${full_templates_path}/top_navigation.ftl" />
							</div>
						</div>

						<a href="#navigationTrigger" id="navigationTrigger">
							<span class="sr-only">Meny</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>

					</div>
				</div>
			</div>

			<#if has_navigation || is_signed_in>
				<div class="navigation-wrapper">
					<div class="container-fluid">
						<#include "${full_templates_path}/navigation.ftl" />
					</div>
				</div>
			</#if>

		</div>

		<#if show_hero>
			<div class="hero-wrap">
				<@includeWCD />
			</div>
		</#if>

	</header>

	<section id="content">
		<div class="container-fluid">
			<h1 class="hide-accessible">${the_title}</h1>

			<#if show_breadcrumbs>
				<nav id="breadcrumbs">
					<@liferay.breadcrumbs />
				</nav>
			</#if>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</div>
	</section>

</div>

<#include "${full_templates_path}/footer.ftl" />

<div class="js-toggle-admin-mode toggle-admin-mode">
	<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32">
		<path d="M30.276 1.722C29.168.612 27.69 0 26.12 0s-3.044.61-4.153 1.72L4.294 19.29c-.105.105-.185.23-.235.368l-4 11c-.13.355-.05.756.21 1.03.19.204.46.312.73.312.09 0 .19-.014.29-.044l9.95-3.052c.15-.047.29-.133.41-.248l18.62-18.62c1.12-1.11 1.73-2.59 1.73-4.16 0-1.57-.61-3.045-1.73-4.155zM10.092 27.165L6.368 28.31c-.217-.638-.555-1.202-1.016-1.663-.4-.4-.866-.71-1.356-.96L5.7 21H8v2c0 .553.447 1 1 1h1.765l-.673 3.165zm14.72-14.494L12.628 24.86l.35-1.647c.062-.296-.012-.603-.202-.837-.19-.234-.475-.37-.776-.37h-2v-2c0-.552-.448-1-1-1H7.422l11.893-11.83.012.01c.732-.733 1.707-1.136 2.742-1.136s2.01.403 2.74 1.136 1.14 1.707 1.14 2.743c0 1.03-.41 2-1.14 2.74zm4.05-4.05l-.932.94c-.09-1.43-.683-2.76-1.703-3.78s-2.354-1.61-3.787-1.7l.938-.93h.002C24.11 2.406 25.085 2 26.12 2s2.01.403 2.742 1.136C29.596 3.87 30 4.843 30 5.878c0 1.037-.402 2.01-1.138 2.743zm-6.57-.32l-10 10c-.39.39-.39 1.03 0 1.42.195.196.452.294.708.294s.51-.097.707-.292l10-10c.39-.39.39-1.02 0-1.412-.392-.39-1.023-.39-1.414 0z"/>
	</svg>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script type="text/javascript" src="${javascript_folder}/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${javascript_folder}/jquery/owl.carousel.min.js"></script>

<script type="text/javascript" src="${javascript_folder}/jq.js"></script>

<script type="text/javascript" src="${javascript_folder}/modules/innovationsslussen-banner-communicate-plugin.js"></script>
<script type="text/javascript" src="${javascript_folder}/modules/innovationsslussen-signin-prompt.js"></script>
<script type="text/javascript" src="${javascript_folder}/modules/innovationsslussen-signin-prompt-link-plugin.js"></script>
<script type="text/javascript" src="${javascript_folder}/modules/rp-action-confirmation-plugin.js"></script>
<script type="text/javascript" src="${javascript_folder}/modules/select-to-dropdown-plugin.js"></script>

<script type="text/javascript" src="${javascript_folder}/modules/innovationsslussen-theme-2.js"></script>
<script type="text/javascript" src="${javascript_folder}/theme-main.js"></script>

<script src="//www.youtube.com/player_api"></script>

<!-- inject:js -->
<!-- endinject -->

</body>

</html>
