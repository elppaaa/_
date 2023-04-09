//
//  External .swift
//  ProjectDescriptionHelpers
//
//  Created by jk on 2023/04/09.
//

import ProjectDescription

extension TargetDependency {
  public enum SPM {
    public static let ComposableArchitecture: TargetDependency = .external(name: "ComposableArchitecture")
    public static let CasePaths: TargetDependency = .external(name: "CasePaths")
    public static let OrderedCollections: TargetDependency = .external(name: "OrderedCollections")
    public static let Kingfisher: TargetDependency = .external(name: "Kingfisher")
  }
}
