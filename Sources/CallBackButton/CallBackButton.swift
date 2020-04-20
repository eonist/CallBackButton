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
   override public init(frame: CGRect) {
      super.init(frame: frame)
      self.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable) // avoids subsequent need to add this method
   required public init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
#endif
