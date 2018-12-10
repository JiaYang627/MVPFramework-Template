package ${packageName}${fragmentPackageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.app.Activity;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.jiayang.mvp.mvpframework.common.BaseLazyFragment;
import com.jiayang.mvp.mvpframework.m.component.ApiComponent;




<#if presenterName?has_content>
import ${packageName}${presenterPackageName}.${presenterName};
</#if>

import ${packageName}.R;


public class ${pageName}Fragment extends BaseLazyFragment <#if presenterName?has_content><${presenterName}></#if> implements <#if ipmName?has_content>${ipmName}</#if> {


    @Override
    protected void inject(ApiComponent apiComponent) {
        apiComponent.inject(this);
    }

	@Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
    }
	




}
