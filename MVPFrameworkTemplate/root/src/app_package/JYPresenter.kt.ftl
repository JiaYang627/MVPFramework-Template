package ${packageName}${presenterPackageName}


import com.jiayang.mvp.mvpframework.common.BasePresenter
import com.jiayang.mvp.mvpframework.m.rxhelper.ErrorListener
<#if ipmName?has_content>
import ${packageName}${ipmPackageName}.${ipmName}
</#if>

class ${presenterName}(errorListener: ErrorListener?) : BasePresenter<<#if ipmName?has_content>${ipmName}</#if>>(errorListener) {
}