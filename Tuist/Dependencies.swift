//
//  Dependencies.swift
//  Config
//
//  Created by jk on 2023/04/08.
//


import ProjectDescription

let dependencies = Dependencies(
  swiftPackageManager: .init([
    .remote(url: "https://github.com/pointfreeco/swift-composable-architecture", requirement: .exact("0.52.0")),
    .remote(url: "https://github.com/pointfreeco/swift-case-paths", requirement: .exact("0.14.0")),
    .remote(url: "https://github.com/apple/swift-collections", requirement: .exact("1.0.4")),
    .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .exact("7.6.2")),
  ],
  productTypes: [
    "ComposableArchitecture": .framework,
    "XCTestDynamicOverlay": .framework,
    "CasePaths": .framework,
    "OrderedCollections": .framework,
    
    "Kingfisher": .framework,
  ]),
  platforms: [.iOS])
