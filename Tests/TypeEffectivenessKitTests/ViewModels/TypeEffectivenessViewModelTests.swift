//
//  TypeEffectivenessViewModelTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class TypeEffectivenessViewModelTests: XCTestCase {
    
    // MARK: - Properties
    
    var sut: TypeEffectivenessViewModel!

    // MARK: - Setup
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let firstType: PokemonType = .water
        let secondType: PokemonType = .ground
        let moveType: PokemonType = .grass
        
        sut = TypeEffectivenessViewModel(firstType: firstType, secondType: secondType, moveType: moveType)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    // MARK: - Initializer Tests
    func test_init_whenPassingArguments_shouldSucceed() throws {
        let firstType: PokemonType = .water
        let secondType: PokemonType = .ground
        let moveType: PokemonType = .grass
        
        let sutAlternate = TypeEffectivenessViewModel(firstType: firstType, secondType: secondType, moveType: moveType)
        
        XCTAssertNotNil(sutAlternate)
        XCTAssertEqual(sutAlternate.firstType, firstType)
        XCTAssertEqual(sutAlternate.secondType, secondType)
        XCTAssertEqual(sutAlternate.moveType, moveType)
    }
    
    func test_init_whenPassingArguments_shouldFail() throws {
        let firstType: PokemonType = .water
        let secondType: PokemonType = .ground
        let moveType: PokemonType = .grass
        
        let sutAlternate = TypeEffectivenessViewModel(firstType: firstType, secondType: .steel, moveType: moveType)
        
        XCTAssertNotEqual(sutAlternate.secondType, secondType)
    }
    
    func test_makeSelect_shouldSucceed() {
        sut.makeOnSelect()
        XCTAssertNotEqual(sut.result, .notLocated)
    }
    
    func test_makeSelect_shouldFail() {
        XCTAssertEqual(sut.result, .notLocated)
    }

}
