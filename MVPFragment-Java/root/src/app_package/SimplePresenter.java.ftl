package ${packageName}.ui.presenter;

import ${packageName}.ui.presenter.Presenter;
import ${packageName}.repository.UserRepository;
import ${packageName}.ui.ResLocator;

public class ${presenterClass} extends Presenter<${presenterClass}.MVPView, ${presenterClass}.Navigator> {
    ResLocator resLocator;
    <#if userRepository>UserRepository userRepository;</#if>

    public ${presenterClass}(ResLocator resLocator<#if userRepository>, UserRepository userRepository</#if>) {
        this.resLocator = resLocator;
        <#if userRepository>this.userRepository = userRepository;</#if>
    }

    @Override
    public void initialize() {

    }

    @Override
    public void resume() {

    }

    @Override
    public void pause() {

    }

    @Override
    public void destroy() {

    }

    public interface MVPView extends AbsMVPView {

    }

    public interface Navigator extends AbsNavigator {

    }
}

