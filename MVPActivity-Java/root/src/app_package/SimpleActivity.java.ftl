package ${packageName}.ui.activity;

import android.os.Bundle;
import ${packageName}.ui.activity.BaseActivity;
import ${packageName}.R;
import ${packageName}.ui.AndroidResLocator;
import ${packageName}.ui.presenter.${presenterClass};
<#if hasDagger>
import javax.inject.Inject;
</#if>
<#if userRepository>
import ${packageName}.repository.UserRepository;
</#if>

public class ${activityClass} extends BaseActivity implements ${presenterClass}.MVPView, ${presenterClass}.Navigator {
    ${presenterClass} presenter;

    <#if hasDagger>@Inject </#if><#if userRepository>UserRepository userRepository;</#if>
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        <#if hasDagger>
            getComponent().inject(this);
        </#if>

        presenter = new ${presenterClass}(new AndroidResLocator(this)<#if userRepository>, userRepository</#if>);
        presenter.setView(this);
        presenter.setNavigator(this);

        presenter.initialize();
    }
    
    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }
}

