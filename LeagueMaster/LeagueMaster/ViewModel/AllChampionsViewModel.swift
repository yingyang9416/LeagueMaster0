//
//  AllChampionsViewModel.swift
//  LeagueMaster
//
//  Created by Ying Yang on 3/25/19.
//  Copyright © 2019 Steven Yang. All rights reserved.
//

import Foundation

class AllChampionsViewModel {
    private(set) var allChampions: [Champion] = []
    
    func getAllChampions(onSuccess:() -> (), onFail: @escaping (NetWorkError?)->()) {
        ApiCaller.shared.getAllChampions(onSuccess: { (responseModel) in
            for (id, champion) in responseModel.data {
//                self.allChampions.append(champion)
                print(id)
            }
            print("is: \(responseModel.format)")
        }, onFail: onFail)
    }
}

