#if os(macOS)
import Foundation
/**
 * Const & typealias
 */
extension CallBackButton {
   public static var defaultOnClickUpInside: OnClickUpInside = { Swift.print("onTapUpInside") }
   public typealias OnClickUpInside = () -> Void
}
#endif
