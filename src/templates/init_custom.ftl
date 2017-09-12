<#--
This file allows you to override and define new FreeMarker variables.
-->

<#------ Theme Settings ----------------------------------------------------------------------------------------------------------------->

<#-- Breadcrumbs -->
<#assign show_breadcrumbs = false />

<#if theme_display.getThemeSetting("show-breadcrumbs") == "true">
	<#assign show_breadcrumbs = true />
</#if>

<#-- Hero -->
<#assign show_hero = false />

<#if theme_display.getThemeSetting("show-hero") == "true">
	<#assign show_hero = true />
</#if>

<#-- Do not show hero when page is maximized (for example login page) -->
<#if is_maximized>
	<#assign show_hero = false />
</#if>

<#------ Admin controls -------------------------------------------------->
<#assign custom_show_admin_controls = sessionClicks.get(request, "custom_admin_controls", "custom-admin-controls-closed") />

<#assign css_class = css_class + " " + custom_show_admin_controls />


<#------ Macros -------------------------------------------------->

<#-- Include Web Content Display portlet in theme. attribute: group_id is long, article_id is String-->

<#macro includeWCD group_id=0 article_id=0>

		<#local portlet_instance_suffix = "innovationsslussen" />
		<#if article_id != 0>
			<#local instance_id = "wcd" + article_id + portlet_instance_suffix />
		<#else>
			<#local instance_id = "wcd" + portlet_instance_suffix />
		</#if>
		<#local instance_id = instance_id?substring(0, 12) />
		<#local portlet_id = "56_INSTANCE_" + instance_id />

		${freeMarkerPortletPreferences.reset()}

    <#local VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />

		<#if group_id != 0>
      <#local VOID = freeMarkerPortletPreferences.setValue("groupId", group_id?c) />
		</#if>
		<#if article_id != 0>
      <#local VOID = freeMarkerPortletPreferences.setValue("articleId", article_id) />
		</#if>

    <#--
		${theme.runtime(portlet_id, "", freeMarkerPortletPreferences)}
    -->

    <@liferay_portlet["runtime"]
      defaultPreferences="${freeMarkerPortletPreferences}"
      portletProviderAction=portletProviderAction.VIEW
      instanceId=portlet_id
      portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
</#macro>
