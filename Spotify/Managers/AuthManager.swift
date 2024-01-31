//
//  AuthManager.swift
//  Spotify
//
//  Created by Sena Nur Erdem on 30.01.2024.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Contants {
        static let clientID = "7036c3ae7b0045fb8bb810a68804a104"
        static let clientSecret = "fbb57d4e3cc0471fa70b96f51fb0fa21"
        
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.apple.com"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Contants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn:Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        // Get Token
    }
    
    public func refreshAccessTooken() {
        
    }
    
    private func cacheToken() {
        
    }
}
