package ${packageName}

import ${packageName}.ui.presenter.Presenter
import ${packageName}.repository.UserRepository
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.mockito.Mock
import org.mockito.MockitoAnnotations
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import android.content.Context

class ${presenterClass}Test() {

    <#if userRepository>
        @Mock lateinit var mockUserRepository: UserRepository
    </#if>

    @Mock lateinit var mockContext: Context

    @Mock lateinit var mockNavigator: ${presenterClass}.Navigator

    @Mock lateinit var mockView: ${presenterClass}.MVPView

    @Before
    fun setUp() {
        MockitoAnnotations.initMocks(this)
    }

    private fun createMockedPresenter(): ${presenterClass} {
        val presenter = ${presenterClass}(mockContext<#if userRepository>, mockUserRepository</#if>)
        presenter.view = mockView
        presenter.navigator = mockNavigator
        return presenter
    }
}
