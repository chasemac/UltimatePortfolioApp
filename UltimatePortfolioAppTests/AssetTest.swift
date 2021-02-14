//
//  AssetTest.swift
//  UltimatePortfolioAppTests
//
//  Created by Chase McElroy on 2/13/21.
//

import XCTest
@testable import UltimatePortfolioApp

class AssetTest: XCTestCase {

    func testColorsExist() {
        for color in Project.colors {
            XCTAssertNotNil(UIColor(named: color), "Failed to load color '\(color)' from asset catalog.")

        }
    }

    func testJSONLoadsCorrectly() {
        XCTAssertFalse(Award.allAwards.isEmpty, "Failed to load awards from JSON")
    }
}
