//
//  DualTypeTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class DualTypeTests: XCTestCase {

    // MARK: - Setup

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: - Initializer Tests
    
    func test_init_shouldSucceed() {
        
        let inputFirstType = PokemonType.water
        let inputSecondType = PokemonType.ground
        
        let dualType = DualType(firstType: inputFirstType, secondType: inputSecondType)
        
        XCTAssertEqual(dualType.firstType, inputFirstType)
        XCTAssertEqual(dualType.secondType, inputSecondType)
        
    }
    
    // MARK: - Check Effectiveness Tests
    
    func test_checkEffectiveness_whenGivenDualType_shouldSucceed() {
        
        let inputFirstType = PokemonType.water
        let inputSecondType = PokemonType.ground
        let inputMoveType = PokemonType.grass
        
        let dualType = DualType(firstType: inputFirstType, secondType: inputSecondType)
        
        let effectiveness = dualType.fetchTypeEffectivenessAccordingTo(inputMoveType)
        
        XCTAssertEqual(effectiveness, .ultraEffective)
        
    }
    
    func test_checkEffectiveness_whenGivenDualType_shouldFail() {
        
        let inputFirstType = PokemonType.water
        let inputSecondType = PokemonType.ground
        let inputMoveType = PokemonType.grass
        
        let dualType = DualType(firstType: inputFirstType, secondType: inputSecondType)
        let effectiveness = dualType.fetchTypeEffectivenessAccordingTo(inputMoveType)
        
        XCTAssertNotEqual(effectiveness, .notVeryEffective)
        
    }
    
    func test_checkEffectiveness_whenChangingDualType_shouldSucceed() {
        
        let inputFirstType = PokemonType.water
        let inputSecondType = PokemonType.ground
        let inputMoveType = PokemonType.grass
        
        var dualType = DualType(firstType: inputFirstType, secondType: inputSecondType)
        
        var effectiveness = dualType.fetchTypeEffectivenessAccordingTo(inputMoveType)
        
        XCTAssertEqual(effectiveness, .ultraEffective)
        
        let newFirstType = PokemonType.ice
        dualType.firstType = newFirstType
        
        effectiveness = dualType.fetchTypeEffectivenessAccordingTo(inputMoveType)
        
        XCTAssertEqual(effectiveness, .superEffective)
        
    }

}
