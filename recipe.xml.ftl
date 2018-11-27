<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

	<instantiate from="root/src/app_package/MvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
				   
	<open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
	
	<instantiate from="root/src/app_package/MvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mvpInterface}.java" />
				   
	<open file="${escapeXmlAttribute(srcOut)}/${mvpInterface}.java" />
				   
	<instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />

	<open file="${escapeXmlAttribute(srcOut)}/${presenterClass}.java" />
				   
</recipe>
