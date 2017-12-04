package ${packageName}.ui.presenter

import ${packageName}.ui.presenter.Presenter
import ${packageName}.repository.UserRepository

import android.content.Context

class ${presenterClass}(val context: Context<#if userRepository>, val userRepository: UserRepository</#if>) :
        Presenter<${presenterClass}.MVPView, ${presenterClass}.Navigator>() {

    override fun initialize() {

    }

    interface MVPView {
        
    }

    interface Navigator {

    }
}
