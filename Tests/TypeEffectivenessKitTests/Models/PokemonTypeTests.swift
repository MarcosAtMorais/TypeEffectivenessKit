//
//  PokemonTypeTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class PokemonTypeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init_shouldHaveLocalizedTitleOnAllCases() {
        
        let types = PokemonType.allCases
        
        for sut in types {
            XCTAssertNotNil(sut)
        }
        
    }
    
    func test_init_shouldHaveWeakness() {
        
        let types = PokemonType.allCases
        
        for sut in types {
            XCTAssertNotNil(sut.weakness)
        }
        
    }
    
    func test_init_shouldHaveValidImageString() {
        
        let types = PokemonType.allCases
        
        for sut in types {
            XCTAssertFalse(sut.image.isEmpty)
        }
        
    }
    
    func test_init_shouldHaveColors() {
        let types = PokemonType.allCases
        
        for sut in types {
            XCTAssertNotEqual(sut.colorGradient.count, 0)
        }
    }
    
    func test_init_whenGivenInvalidRawType_shouldFail() {
        let sut = PokemonType(rawValue: 99)
        XCTAssertNil(sut)
    }
    
    func test_init_whenGivenValidRawType_shouldSucceed() {
        let sut = PokemonType(rawValue: 0)
        XCTAssertNotNil(sut)
    }
    
    func test_checkEffectiveness_shouldBeAbleToCheckDualTypeEffectiveness() {
        let types = PokemonType.allCases
        let inputSecondPokemonType = PokemonType.fire
        let inputOffensiveMoveType = PokemonType.water
        
        for sut in types {
            XCTAssertNotEqual(sut.checkDualTypeEffectiveness(otherType: inputSecondPokemonType, offensiveType: inputOffensiveMoveType), .notLocated)
        }
    }
    
    func test_checkEffectiveness_shouldBeAbleToCheckDualTypeEffectivenessForAllCases() {
        
        let firstPokemonTypes = PokemonType.allCases
        let secondPokemonTypes = PokemonType.allCases
        let inputOffensiveMoveTypes = PokemonType.allCases
        
        for firstType in firstPokemonTypes {
            for secondType in secondPokemonTypes {
                for offensiveType in inputOffensiveMoveTypes {
                    XCTAssertNotEqual(firstType.checkDualTypeEffectiveness(otherType: secondType, offensiveType: offensiveType), .notLocated)
                }
            }
        }
    
    }

}
