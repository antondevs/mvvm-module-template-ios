//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  MVVM Swift Template
//

import Swinject
import SwinjectStoryboard

final class ___VARIABLE_mvvmModuleName___AssemblyContainer: Assembly {
    
    func assemble(container: Container) {
        
        container.storyboardInitCompleted(___VARIABLE_mvvmModuleName___ViewController.self) { r, view in
            
            container.register(___VARIABLE_mvvmModuleName___ViewModel.self) { (r, view: ___VARIABLE_mvvmModuleName___ViewController) in
                let viewModel = ___VARIABLE_mvvmModuleName___ViewModel()
                //viewModel.repository = r.resolve(Repository.self)
                return viewModel
            }
            
            view.viewModel = r.resolve(___VARIABLE_mvvmModuleName___ViewModel.self, argument: view)
        }
        
    }
}