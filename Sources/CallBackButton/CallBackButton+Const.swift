#if os(iOS)
import Foundation
/**
 * Const & typealias
 */
extension CallBackButton {
   public typealias OnTapUpInside = () -> Void
   public static var defaultOnTapUpInside: OnTapUpInside = { Swift.print("onTapUpInside") }
}
#endif
