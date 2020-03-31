#if os(iOS)
import UIKit
/**
 * Ability to use callbacks on a UIButtons
 * ## Example:
 * let btn = CallBackButton(frame: .init(origin: .zero, size: .init(width: 40, height: 40)))
 * btn.setImage(.init(named: "image") , for: .normal)
 * btn.layer.cornerRadius = 20
 */
open class CallBackButton: UIButton {
   public var onTapUpInside: OnTapUpInside = defaultOnTapUpInside
   override init(frame: CGRect) {
      super.init(frame: frame)
      self.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable)
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Handler code
 */
extension CallBackButton {
   @objc func buttonTouched(sender: UIButton) {
      Swift.print("It Works!!!")
   }
}
/**
 * Const & typealias
 */
extension CallBackButton {
   public typealias OnTapUpInside = () -> Void
   public static var defaultOnTapUpInside: OnTapUpInside = { Swift.print("onTapUpInside") }
}
#endif
