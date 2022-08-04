//
//  TypeConformableTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class TypeConformableTests: XCTestCase {
    
    // MARK: - Properties
    
    var allTypes: [PokemonType]!

    // MARK: - Setup

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        self.allTypes = PokemonType.allCases
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        self.allTypes = nil
    }

    // MARK: - Initializer Tests
    
    func test_init_standardTypeConformable_shouldSucceed() throws {
        
        let inputSecondType = PokemonType.steel
        let type: TypeConformable = BugType.secondType(type: inputSecondType)
        
        XCTAssertNotNil(type)
        
    }
    
    func test_init_dualTypeConformance_whenDualType_shouldSucceed() {
        
        let dualType = DualTypeConformable.fetchPokemonType(firstType: .water, secondType: .steel)
        let dualTypeOffensiveAttack = PokemonType.electric
        
        XCTAssertEqual(dualType.checkDamage(offensiveType: dualTypeOffensiveAttack), .superEffective)
        
    }
    
    func test_init_dualTypeConformance_whenSingleType_shouldSucceed() {
        
        let singleType = DualTypeConformable.fetchPokemonType(singleType: .fire)
        let dualTypeOffensiveAttack = PokemonType.water
        
        XCTAssertEqual(singleType.checkDamage(offensiveType: dualTypeOffensiveAttack), .superEffective)
        
    }

    // MARK: Checking Damage Tests
    
    func test_checkDamage_whenTestingAllCasesForBugType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = BugType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "BUG FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForDarkType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = DarkType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "DARK FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForDragonType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = DragonType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Dragon FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForElectricType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = ElectricType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Electric FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForFairyType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = FairyType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Fairy FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForFightingType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = FightingType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Fighting FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForFireType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = FireType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Fire FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForFlyingType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = FlyingType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Flying FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForGhostType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = GhostType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Ghost FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForGrassType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = GrassType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Grass FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForGroundType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = GroundType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Ground FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForIceType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = IceType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Ice FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForNormalType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = NormalType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Normal FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForPoisonType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = PoisonType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Poison FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForPsychicType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = PsychicType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Psychic FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForRockType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = RockType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Rock FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForSteelType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = SteelType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Steel FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
    func test_checkDamage_whenTestingAllCasesForWaterType_shouldSucceed() {
        
        for secondType in self.allTypes {
            let currentDualType = WaterType.secondType(type: secondType)
            for offenseType in self.allTypes {
                let effectiveness = currentDualType.checkDamage(offensiveType: offenseType)
                XCTAssertNotEqual(effectiveness, .notLocated, "Water FIRST TYPE / effectiveness: \(effectiveness.localized), from type: \(secondType) against move: \(offenseType.localizedTitle)")
            }
        }
        
    }
    
}
