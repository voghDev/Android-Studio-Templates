package ${packageName}.ui.presenter;

import ${packageName}.ui.ResLocator;
import ${packageName}.ui.presenter.Presenter;
import ${packageName}.repository.UserRepository;
import org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Mockito.times;
import org.mockito.Mockito.verify;

public class ${presenterClass}Test() {

    <#if userRepository>
    @Mock
    UserRepository mockUserRepository;
    </#if>

    @Mock
    ResLocator mockResLocator;

    @Mock
    ${presenterClass}.Navigator mockNavigator;

    @Mock
    ${presenterClass}.MVPView mockView;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    private ${presenterClass} createMockedPresenter() {
        ${presenterClass} presenter = ${presenterClass}(mockResLocator<#if userRepository>, mockUserRepository</#if>);
        presenter.setView(mockView);
        presenter.setNavigator(mockNavigator);
        return presenter;
    }
}
