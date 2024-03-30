// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

import UIKit
import UIKit.UIColor

typealias Color = UIColor

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum RDComponentsAssets {
  internal enum Base {

    internal static let dotsVector = ImageAsset(name: "dots-vector")
    internal static let mainLogo = ImageAsset(name: "main-logo")
  }
  internal enum Colors {

    internal static let lightBlue = ColorAsset(name: "light-blue")
    internal static let primary = ColorAsset(name: "primary")
    internal static let yellow = ColorAsset(name: "yellow")
  }
  internal enum Welcome {

    internal static let bookRide = ImageAsset(name: "book-ride")
    internal static let enjoyTrip = ImageAsset(name: "enjoy-trip")
    internal static let setDestination = ImageAsset(name: "set-destination")
  }
}

internal struct ColorAsset {
    internal var name: String
    internal var color: UIColor {
        guard let colorAsset = UIColor(named: name,
                                       in: BundleToken.bundle,
                                       compatibleWith: nil) else {
            fatalError("Unable to load color named \(name)")
        }
        return colorAsset
    }
}

internal struct ImageAsset {

  internal var name: String
  internal var image: UIImage {
    guard let imageAsset = UIImage(named: name, in: BundleToken.bundle, compatibleWith: nil) else {
      fatalError("Unable to load image named \(name)")
    }
    return imageAsset
  }

}

// swiftlint:enable identifier_name line_length nesting type_body_length type_name
