<?xml version="1.0"?>
<recipe>

<#if needActivity>
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
</#if>

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if needLazyFragment && generateLazyFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if needActivity>
    <instantiate from="root/src/app_package/JYActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(ativityPackageName)}/${pageName}Activity.java" />
    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(ativityPackageName)}/${pageName}Activity.java" />
</#if>


<#if needFragment>
    <instantiate from="root/src/app_package/JYFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
</#if>

<#if needLazyFragment>
    <instantiate from="root/src/app_package/JYLazyFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.java" />
</#if>

<#if presenterName?has_content && needActivity ||needFragment >
    <instantiate from="root/src/app_package/JYPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(presenterPackageName)}/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(presenterPackageName)}/${presenterName}.java" />
</#if>

<#if presenterName?has_content && needLazyFragment>
    <instantiate from="root/src/app_package/JYLazyPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(presenterPackageName)}/${presenterName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(presenterPackageName)}/${presenterName}.java" />
</#if>
<#if ipmName?has_content>
    <instantiate from="root/src/app_package/JYIpm.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}${slashedPackageName(ipmPackageName)}/${ipmName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}${slashedPackageName(ipmPackageName)}/${ipmName}.java" />
</#if>


</recipe>
