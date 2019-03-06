//
//  Model.swift
//  swiftTutorialForBeginer
//
//  Created by 川内翔一朗 on 2019/03/01.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import Foundation

/// 税込価格を返す
func taxIncludedPrice(taxExcludedPrice: UInt) -> UInt {
    return taxExcludedPrice * 108 / 100
}

/// 文字列の末尾がpでなければpをつける
func addSuffixP( name: inout String) -> Bool {
    if name.hasSuffix("p") {
        return false
    }
    name = name + "p"
    return true
}
