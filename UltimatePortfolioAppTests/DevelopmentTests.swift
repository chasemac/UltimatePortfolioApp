//
//  DevelopmentTests.swift
//  UltimatePortfolioAppTests
//
//  Created by Chase McElroy on 2/14/21.
//

import CoreData
import XCTest
@testable import UltimatePortfolioApp

class DevelopmentTests: BaseTestCase {

    func testSampleDataCreationWorks() throws {
        try dataController.createSampleData()

        XCTAssertEqual(dataController.count(for: Project.fetchRequest()), 5, "There should be 5 sample projects")

        XCTAssertEqual(dataController.count(for: Item.fetchRequest()), 50, "There should be 5 sample projects")
    }

    func testDeleteAllClearsEverything() throws {
        try dataController.createSampleData()
        dataController.deleteAll()

        XCTAssertEqual(dataController.count(for: Project.fetchRequest()), 0, "deleteAll() should leave 0 sample projects")

        XCTAssertEqual(dataController.count(for: Item.fetchRequest()), 0, "deleteAll() should leave 0 sample projects")
    }

    func testExampleProjectIsClosed() {
        let project = Project.example
        XCTAssertTrue(project.closed, "The example project should be closed.")
    }

    func testExampleProjectIsHighPriority() {
        let item = Item.example
        XCTAssertEqual(item.priority, 3, "The example item should be high priority")
    }
}
