//
//  TypeViewModelTests.swift
//  
//
//  Created by Marcos Morais on 04/08/22.
//

import XCTest
@testable import TypeEffectivenessKit

class TypeViewModelTests: XCTestCase {
    
    // MARK: - Setup
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - Initializer Tests
    func test_init_whenPassingTitle_shouldSucceed() throws {
        let inputTitle: String = "Test"
        let sut = TypeViewModel(title: "Test")
        
        XCTAssertEqual(sut.title, inputTitle)
    }
    
    func test_init_whenPassingTitle_shouldFail() throws {
        let inputTitle: String = "Test"
        let sut = TypeViewModel(title: "Test")
        
        XCTAssertNotEqual(sut.title, inputTitle.lowercased())
    }
    
    func test_init_whenPassingOnSelect_shouldSucceed() throws {
        let inputOnSelect: (PokemonType) -> () = { pokemonType in
            print("Testing here.")
        }
        let sut = TypeViewModel(onSelect: inputOnSelect)
        
        XCTAssertNotNil(sut.onSelect)
    }
    
    // MARK: - Callback Tests
    
    func test_whenWithPokemonType_shouldPassthroughAndSucceed() {
        
        let inputType: PokemonType = .ghost
        let inputOnSelect: (PokemonType) -> () = { pokemonType in
            XCTAssertEqual(inputType, pokemonType)
        }
        let sut = TypeViewModel(onSelect: inputOnSelect)
        sut.onSelect(inputType)
        
    }
    
    func test_whenWithPokemonType_shouldPassthroughAndFail() {
        
        let inputType: PokemonType = .ghost
        let inputOnSelect: (PokemonType) -> () = { pokemonType in
            XCTAssertNotEqual(inputType, pokemonType)
        }
        let sut = TypeViewModel(onSelect: inputOnSelect)
        sut.onSelect(.grass)
        
    }
    
    func test_whenChangingTitleThroughCallback_shouldSucceed() {
        let initialTitle = "Great Types"
        let inputType: PokemonType = .electric
        let sut = TypeViewModel(title: initialTitle)
        let inputOnSelect: (PokemonType) -> () = { pokemonType in
            sut.title = pokemonType.localizedTitle
            XCTAssertEqual(sut.title, pokemonType.localizedTitle)
        }
        sut.onSelect = inputOnSelect
        sut.onSelect(inputType)
    }
    
    func test_whenChangingTitleThroughCallback_shouldFail() {
        let initialTitle = "Great Types"
        let inputType: PokemonType = .electric
        let sut = TypeViewModel(title: initialTitle)
        let inputOnSelect: (PokemonType) -> () = { pokemonType in
            XCTAssertNotEqual(sut.title, pokemonType.localizedTitle)
        }
        sut.onSelect = inputOnSelect
        sut.onSelect(inputType)
    }

}
