import ProjectDescription
import ProjectDescriptionHelpers

let platform: Platform = .iOS
let appName = "app"

let app = Target(
  name: appName,
  platform: platform,
  product: .app,
  productName: appName,
  bundleId: "dev.jksong.\(appName)",
  deploymentTarget: .iOS(targetVersion: "15.0", devices: .iphone),
  infoPlist: "Resources/Info.plist",
  sources: ["Sources/**/*.swift"],
  resources: ["Resources/**"],
  dependencies: [
    .SPM.ComposableArchitecture,
    .SPM.CasePaths,
    .SPM.Kingfisher,
    .SPM.OrderedCollections,
  ],
  settings: .settings(configurations: [
    .debug(name: "Debug", xcconfig: .relativeToRoot("xcconfig/Config.xcconfig")),
    .release(name: "Release", xcconfig: .relativeToRoot("xcconfig/Config.xcconfig")),
  ]))

let project = Project(
  name: "T",
  organizationName: "dev.jksong",
  targets: [app])
