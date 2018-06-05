package ${packageName}.ui.activity

import android.os.Bundle
import ${packageName}.ui.activity.BaseActivity
<#if hasDagger>
import javax.inject.Inject
</#if>
<#if userRepository>
import ${packageName}.repository.UserRepository
</#if>

class ${activityClass} : BaseActivity(), ${presenterClass}.MVPView, ${presenterClass}.Navigator {

    var presenter: ${presenterClass}? = null

    <#if hasDagger>@Inject lateinit </#if><#if userRepository>var userRepository: UserRepository</#if>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        <#if hasDagger>
            getComponent().inject(this)
        </#if>

        presenter = ${presenterClass}(this<#if userRepository>, userRepository</#if>)
        presenter?.view = this
        presenter?.navigator = this

        presenter?.initialize()
    }

    override fun getLayoutId() : Int = R.layout.${layoutName}    
}
