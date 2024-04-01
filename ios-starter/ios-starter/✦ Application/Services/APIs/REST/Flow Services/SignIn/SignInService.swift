//
//  SignInService.swift
//  ios-starter
//
//  Created by Aleksey Bidnyk on 29.03.2024.
//

import Foundation

class SignInService {
    
    private var restBackend: AppRestBackend
    
    // MARK: - Init
    
    init(restBackend: AppRestBackend) {
        self.restBackend = restBackend
    }
}

extension SignInService: SignInServiceable {
    
    func signIn(with email: String,
                password: String,
                completion: @escaping AppRestBackend.SignInCompletion) {
        let parameters = AppRestBackend.SignInParameters(email: email,
                                                         password: password)
        
        restBackend.signIn(with: parameters,
                           completion: completion)
    }
    
    func sendResetPasswordRequest(with email: String,
                                  completion: @escaping AppRestBackend.ResetPasswordCompletion) {
        restBackend.sendResetPasswordRequest(with: email,
                                             completion: completion)
    }
}
