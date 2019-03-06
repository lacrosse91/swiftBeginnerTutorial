////
////  ModelTests.swift
////  swiftTutorialForBeginer
////
////  Created by 川内翔一朗 on 2019/03/01.
////  Copyright © 2019 川内翔一朗. All rights reserved.
////
//
//import XCTest
//@testable import swiftTutorialForBeginer
//
//class ModelTests: XCTestCase {
//
//    let model = Model()
//
//    override func setUp() {
//        super.setUp()
//    }
//
//    override func tearDown() {
//        super.tearDown()
//    }
//
//    func testTaxIncludedPrice() {
//
//        var testPrice: UInt = 0
//        XCTAssertEqual(model.taxIncludedPrice(testPrice), 0)
//
//        testPrice = 100
//        XCTAssertEqual(model.taxIncludedPrice(testPrice), 108)
//    }
//
//    func testPerformanceTaxIncludedPrice() {
//
//        self.measureBlock {
//            let testPrice: UInt = 100
//            XCTAssertEqual(self.model.taxIncludedPrice(testPrice), 108)
//        }
//    }
//
//    func testAddSuffixP() {
//        var name = "okudera"
//        XCTAssertTrue(model.addSuffixP(&name))
//
//        name = "cap"
//        XCTAssertFalse(model.addSuffixP(&name))
//    }
//
//    func testPerformanceAddSuffixP() {
//
//        self.measureBlock {
//            var name = "okudera"
//            XCTAssertTrue(self.model.addSuffixP(&name))
//        }
//    }
//}
