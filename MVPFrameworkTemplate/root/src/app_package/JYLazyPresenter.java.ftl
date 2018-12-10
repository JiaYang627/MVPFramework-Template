package ${packageName}${presenterPackageName};


import com.jiayang.mvp.mvpframework.common.BaseLazyPresenter;
import com.jiayang.mvp.mvpframework.m.rxhelper.ErrorListener;

<#if ipmName?has_content>
import ${packageName}${ipmPackageName}.${ipmName};
</#if>


public class ${presenterName} extends BaseLazyPresenter <#if ipmName?has_content><${ipmName}></#if> {
    
	
	@Inject
    public ${presenterName}(ErrorListener errorListener) {
        super(errorListener);
    }
	
	@Override
    protected void lazyLoad() {

    }
}