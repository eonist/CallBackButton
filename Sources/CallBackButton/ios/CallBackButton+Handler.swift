#if os(iOS)
import UIKit
/**
 * Handler code
 */
extension CallBackButton {
   /**
    * On tap
    */
   @objc open func buttonTouched(sender: UIButton) {
      // Swift.print("It Works!!!")
      onTapUpInside()
   }
}
#endif
