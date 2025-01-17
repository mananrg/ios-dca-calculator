//
//  AuthService.swift
//  ios-dca-calculator
//
//  Created by manan gandhi on 4/25/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService{
    public static let shared = AuthService()
    private init(){}
    
    
    /// A METHOD TO REGISTER USER
    /// - Parameters:
    ///   - userRequest: THE USER INFORMATION(EMAIL, PASSWORD)
    ///   - completion: A COMPLETION WITH TWO VALUES...
    ///   - Bool: wasResgistered - Deteermines if the user was registered and saved in the database correctly
    ///   - Error?:  An optional error if firebase provides one
    public func registerUser(with userRequest: RegisterUserRequest, completion: @escaping (Bool, Error?)-> Void){
        let email = userRequest.email
        let password = userRequest.password
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if let error = error {
                completion(false, error)
                return
            }
            guard let resultUser = result?.user else{
                completion(false,nil)
                return
            }
            let db = Firestore.firestore()
            db.collection("users").document(resultUser.uid).setData(["email": email]) { error in
                if let error = error {
                    completion(false, error)
                    return
                }
                completion(true, nil)
            }
        }
    }
    
    public func signIn(with userRequest:LoginUserRequest, completion: @escaping (Error?)-> Void){
        Auth.auth().signIn(withEmail: userRequest.email, password: userRequest.password){
            result, error in
            if let error = error{
                completion(error)
                return
            }
            else{
                completion(nil)
            }
        }
    }
    public func signOut(completion: @escaping (Error?)-> Void){
        do {
            try Auth.auth().signOut()
            completion(nil)
        }
        catch let error{
            completion(error)
        }
    }
}

