import UIKit
/**
 * Const & typealias
 */
extension CallBackButton {
   public typealias OnTapUpInside = () -> Void
   public static var defaultOnTapUpInside: OnTapUpInside = { Swift.print("onTapUpInside") }
}
