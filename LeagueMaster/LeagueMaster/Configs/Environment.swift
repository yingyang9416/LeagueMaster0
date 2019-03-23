//
//  Environment.swift
//  LeagueMaster
//
//  Created by Ying Yang on 3/23/19.
//  Copyright © 2019 Steven Yang. All rights reserved.
//

import Foundation

public enum PlistKey {
    case ServerURL
    
    func value() -> String {
        switch self {
        case .ServerURL:
            return "server_base_url"
        }
    }
}

public struct Environment {
    
    fileprivate static var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public static func configuration(_ key: PlistKey) -> String {
        switch key {
        case .ServerURL:
            return infoDict[PlistKey.ServerURL.value()] as! String
        }
    }
}
