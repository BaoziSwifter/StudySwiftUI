//
//  CodableBundleExtension.swift
//  LoveToWrite
//
//  Created by dlf on 2022/2/13.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // load json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("load local json file:\(file) failed!")
        }
        
        // read data from ulr
        guard let data = try? Data(contentsOf: url) else {
            fatalError("read data from json file \(file) failed!")
        }
        
        // create decode
        let decode = JSONDecoder()
        
        // decode data by the decode
        guard let obj = try? decode.decode(T.self, from: data) else {
            fatalError("decode data from json file \(file) failed!")
        }
        return obj
    }
}
