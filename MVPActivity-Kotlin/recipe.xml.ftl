<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "root/src/app_package/simple_activity_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
<#if allFilesSamePackage>
    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterClass}.kt" />
<#else>
    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/activity/${activityClass}.kt" />

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/presenter/${presenterClass}.kt" />
</#if>

    <#if includeTest>
        <#if allFilesSamePackage>
            <instantiate from="root/src/app_package/SimplePresenterTest.kt.ftl"
                   to="${testFolder}/${slashedPackageName(packageName)}/${presenterClass}Test.kt" />
        <#else>
            <instantiate from="root/src/app_package/SimplePresenterTest.kt.ftl"
                   to="${testFolder}/${slashedPackageName(packageName)}/ui/presenter/${presenterClass}Test.kt" />
        </#if>
    </#if>
</recipe>
