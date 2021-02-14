//
//  UltimatePortfolioAppTests.swift
//  UltimatePortfolioAppTests
//
//  Created by Chase McElroy on 2/13/21.
//

import CoreData
import XCTest
@testable import UltimatePortfolioApp

class BaseTestCase: XCTestCase {

    var dataController: DataController!
    var managedObjectContext: NSManagedObjectContext!

    override func setUpWithError() throws {
        dataController = DataController(inMemory: true)
        managedObjectContext = dataController.container.viewContext
    }
}
