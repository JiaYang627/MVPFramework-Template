package ${packageName}${ativityPackageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.jiayang.mvp.mvpframework.common.BaseActivity;
import com.jiayang.mvp.mvpframework.m.component.ApiComponent;


<#if presenterName?has_content>
import ${packageName}${presenterPackageName}.${presenterName};
</#if>
<#if impName?has_content>
import ${packageName}${ipmPackageName}.${ipmName};
</#if>
import ${packageName}.R;


public class ${pageName}Activity extends BaseActivity <#if presenterName?has_content><${presenterName}></#if> implements <#if ipmName?has_content>${ipmName}</#if> {


	
	@Override
    protected void inject(ApiComponent apiComponent) {
        apiComponent.inject(this);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

}
