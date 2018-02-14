package ${packageName}.ui.presenter;

import ${packageName}.ui.presenter.Presenter;
import ${packageName}.repository.UserRepository;

public class ${presenterClass} extends Presenter<${presenterClass}.MVPView, ${presenterClass}.Navigator> {
    ResLocator resLocator;

    public ${presenterClass}(ResLocator resLocator) {
        this.resLocator = resLocator;
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

