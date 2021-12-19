//
//  homeViewModel.swift
//  mvvm
//
//  Created by mohsen on 19/12/2021.
//

import Foundation

final class homeViewModel{
    var welcomeMessage : ObservableObject<String?> = ObservableObject(nil)
    
    func getlogInUser(){
        let user = NetworkService.shard.getlogInUser()
        self.welcomeMessage.value = "hello \(user.firstName) \(user.lastName)"
    }
}
