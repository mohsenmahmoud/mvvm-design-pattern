//
//  loginViewModel.swift
//  mvvm
//
//  Created by mohsen on 18/12/2021.
//

import Foundation
final class loginViewModel{
    
    var error : ObservableObject<String?> = ObservableObject(nil)
    func login(email : String , passowrd : String){
 
        NetworkService.shard.login(email: email, passowrd: passowrd) {[weak self] success in
            self?.error.value = success ? nil : "invaled Credenials!!!"
        }
    }
   
} 
