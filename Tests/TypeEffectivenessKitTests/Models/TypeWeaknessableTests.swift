//
//  TypeWeaknessableTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class TypeWeaknessableTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init_whenWeaknessUsingCase_shouldSucceed() throws {
        let sut = BugWeakness.default
        let inputBugType = PokemonType.bug
        
        XCTAssertEqual(sut.type, inputBugType)
    }
    
    func test_whenAllPokemonTypesAreCreated_shouldAllHaveWeaknessesAndSucceed() {
        
        let types = PokemonType.allCases
        let weaknesses = types.map({ $0.weakness })
        
        XCTAssertFalse(weaknesses.isEmpty)
        XCTAssertEqual(weaknesses.count, 18)
        
    }
    
    func test_whenHavingAllWeaknesses_shouldNotHaveNotLocatedEffectivenessAndSucceed() {
        
        let types = PokemonType.allCases
        let weaknesses = types.map({ $0.weakness })
        
        for weakness in weaknesses {
            
            let noEffectCount = weakness.noDamageFrom.count
            let notVeryEffectiveCount = weakness.halfDamageFrom.count
            let effectiveCount = weakness.normalDamageFrom.count
            let superEffectiveCount = weakness.doubleDamageFrom.count
            
            let allWeaknessesCount = noEffectCount + notVeryEffectiveCount + effectiveCount + superEffectiveCount
            
            XCTAssertEqual(allWeaknessesCount, 18)

        }
        
    }
    
    func test_whenCheckingForEffectivenessForSingleType_shouldSucceed() {
        
        let inputPokemonType = PsychicWeakness.default
        let inputMoveType = PokemonType.ghost
        
        let effectiveness = inputPokemonType.checkEffectiveness(offensiveType: inputMoveType)
        
        XCTAssertEqual(effectiveness, .superEffective)
        
    }
    
    func test_whenCheckingForEffectivenessForSingleType_shouldFail() {
        
        let inputPokemonType = PsychicWeakness.default
        let inputMoveType = PokemonType.fighting
        
        let effectiveness = inputPokemonType.checkEffectiveness(offensiveType: inputMoveType)
        
        XCTAssertNotEqual(effectiveness, .superEffective)
        
    }

}
