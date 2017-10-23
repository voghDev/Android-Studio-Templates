<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "root/src/app_package/simple_fragment_layout.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/fragment/${fragmentClass}.kt" />

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/presenter/${presenterClass}.kt" />

    <#if includeTest>
        <instantiate from="root/src/app_package/SimplePresenterTest.kt.ftl"
                   to="${testFolder}/${slashedPackageName(packageName)}/ui/presenter/${presenterClass}Test.kt" />
    </#if>
</recipe>
