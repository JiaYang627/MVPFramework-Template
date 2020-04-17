package ${packageName}${ativityPackageName}

import com.jiayang.mvp.mvpframework.common.BaseActivity
import com.jiayang.mvp.mvpframework.m.component.ApiComponent

import ${packageName}.R
<#if presenterName?has_content>
import ${packageName}${presenterPackageName}.${presenterName}
</#if>


<#if ipmName?has_content>
import ${packageName}${ipmPackageName}.${ipmName}
</#if>


class ${pageName}Activity : BaseActivity<#if presenterName?has_content><${presenterName}>()</#if> , <#if ipmName?has_content>${ipmName}</#if> {
    override fun inject(apiComponent: ApiComponent?) {
        apiComponent?.inject(this)
    }

    override fun getLayoutId() = R.layout.${activityLayoutName};


}
