//
//  NetworkService.swift
//  mvvm
//
//  Created by mohsen on 19/12/2021.
//

import Foundation
final class NetworkService{
    static let shard = NetworkService()
    
   private var user : User?
    
    
    private init(){}
    
    func login(email : String , passowrd : String , completion : @escaping(Bool) ->Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            [weak self] in
            if email == "mohsen@gmail.com" && passowrd == "123"{
                self?.user = User(firstName: "mohsen", lastName: "fadel", email: "mohsen@gmail.com", age: 27)
                completion(true)
            }else{
                self?.user = nil
                completion(false)
            }
        }
    }
    
    
    
    func getlogInUser() -> User{
        return user!
    }
}
