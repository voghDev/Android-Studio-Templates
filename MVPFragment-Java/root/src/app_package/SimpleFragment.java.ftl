package ${packageName}.ui.activity;

import android.os.Bundle;
import ${packageName}.ui.activity.BaseActivity;
import ${packageName}.R;
import ${packageName}.ui.AndroidResLocator;
import ${packageName}.ui.presenter.UserProfilePresenter;
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
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        <#if hasDagger>
            getComponent().inject(this);
        </#if>

        presenter = new ${presenterClass}(new AndroidResLocator(this));
        presenter.setView(this);
        presenter.setNavigator(this);

        presenter.initialize();
    }
    
    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }
}

