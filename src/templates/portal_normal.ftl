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

<div class="yammer-link"><div class="yammer-heading"><a href="https://www.yammer.com/vgregion.se/#/threads/inGroup?type=in_group&amp;feedId=3726752&amp;view=all"><span>Y</span><span>A</span><span>M</span><span>M</span><span>E</span><span>R</span></a></div>
    <div class="yammer-info">
        <strong>Häng med oss på Yammer!</strong>
        <p>Har du en fråga eller idé som du vill diskutera med fler inom hälso- och sjukvården i VGR?
            På vår sidan kan du följa och delta i intressanta diskussioner om innovation i vården.
            <a href="https://www.yammer.com/vgregion.se/#/threads/inGroup?type=in_group&amp;feedId=3726752&amp;view=all">Yammer-tråd</a>
        </p>
    </div>
</div>

<#include "${full_templates_path}/footer.ftl" />

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

<#include "${full_templates_path}/piwik.ftl" />

</html>
