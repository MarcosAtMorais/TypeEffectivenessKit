<p align="center">
  <img width="800" height="386" src="https://www.marcostmorais.com/type-effectiveness-kit.png">
</p>

![Swift Version](https://img.shields.io/badge/Swift-5.5-F16D39.svg?style=flat) ![Dependency frameworks](https://img.shields.io/badge/Supports-_Swift_Package_Manager-F16D39.svg?style=flat) [![Twitter](https://img.shields.io/badge/twitter-@marcostmorais-blue.svg?style=flat)](https://twitter.com/marcostmorais) ![Platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS%20%7C%20iPadOS-blue)

**TypeEffectivenessKit** is a Type Effectiveness Checker for all kinds of Pokémon Types and Pokémon Move Types. With TypeEffectivenessKit, you'll be able to have a simple yet flexible framework to work with.

## ✨ Features

- **Type Weaknesses**: No Effect, Barely Effective (1/4), Not Very Effective (1/2), Effective, Super Effective (2x) and Ultra Effective (4x).
- **The relationships are all ready**. Both for Single and Dual Types. A PokemonType has its weaknesses, as well as some identifiers.
- **Easily check a type**. Just bring the method for Checking Effectiveness and you'll be able to check everything.
- **Built Swifty** and with **lightweight** in mind.
- **100% Swift**.
- **Three examples** are included in the package. All using SwiftUI, following **architectural patterns and leveraging SwiftUI's power**.
- Fully **documented** and **tested**.
- **Update**d from the latest games released.
- This will be very useful especially for **Terastal Pokémon** and **Tera Raid Battles** on the brand-new games.

## 🚀 Get Started

### Using TypeEffectivenessKit in Production Code
Just **import TypeEffectivenessKit**:

```swift
import TypeEffectivenessKit
```

Then, you can use it as you please. Like this quick example using **single types**:

```swift
let pokemonType: PokemonType = .fire
let moveType: PokemonType = .water

let effectiveness = pokemonType.checkSingleTypeEffectiveness(offensiveType: moveType)

print(effectiveness.localized) // Super Effective
```

An example using a Pokémon that has **two types**. This is one option:
```swift
let pokemonFirstType: PokemonType = .fire
let pokemonSecondType: PokemonType = .ghost
let moveType: PokemonType = .grass

let effectiveness = pokemonFirstType.checkDualTypeEffectiveness(otherType: pokemonSecondType, offensiveType: moveType)

print(effectiveness.localized) // Not Very Effective
```

Another example using Dual Type Pokémon, now using a struct named **DualType** that includes it with a convenience method:


```swift
let pokemonFirstType: PokemonType = .fairy
let pokemonSecondType: PokemonType = .psychic
let dualType = DualType(firstType: pokemonFirstType, secondType: pokemonSecondType)

let moveType: PokemonType = .dragon

let effectiveness = dualType.fetchTypeEffectivenessAccordingTo(moveType)

print(effectiveness.localized) // No Effect
```

This package also includes several **SwiftUI views that display the types, color and symbols in a stylish way**. As well as **grids** and **stacks**. You can use these views as you please. Explore 'em all!

## 📱 Example App for educational purposes

TypeEffectivenessKit also comes with several scenes that you can learn from for how to use types. Such as this one and many others:

<p align="center">
  <img width="300" height="564" src="https://www.marcostmorais.com/example-app-typeeffectivenesskit.png">
</p>

All examples are located on the View folder, but the elements should be able to be used just with the package import.

## 🔨 Swift Package Manager

You can also add this library using Swift Package Manager.

1. Go to **File > Add Packages**.
2. The Add Package dialog will appear, by default with Apple packages.
3. In the upper right hand corner, paste https://github.com/MarcosAtMorais/TypeEffectivenessKit into the **search bar**.
4. Hit **Return** to kick off the search.
5. Click **Add Package**.
6. You're all set! Just **import TypeEffectivenessKit** whenever and wherever you want to use it.

## 🌟 Requirements

**iOS** 15+

**macOS** 12+

**watchOS** 7+

**tvOS** 14+

## 💭 Related

This package is just for hobby and educational purposes. It may not be used for commercial releases. Pokémon is a trademark of Nintendo, Game Freak, The Pokémon Company and Creatures Inc. No copyright or trademark infringement is intended.
