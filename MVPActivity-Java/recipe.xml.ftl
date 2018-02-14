<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "root/src/app_package/simple_activity_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/activity/${activityClass}.kt" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/presenter/${presenterClass}.kt" />

    <#if includeTest>
        <instantiate from="root/src/app_package/SimplePresenterTest.java.ftl"
                   to="${testFolder}/${slashedPackageName(packageName)}/ui/presenter/${presenterClass}Test.kt" />
    </#if>
</recipe>
