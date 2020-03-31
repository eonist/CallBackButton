#if os(macOS)
import Cocoa
/**
 * Handler code
 */
extension CallBackButton {
   /**
    * On tap
    */
   @objc open func handleButtonAction(sender: NSButton) {
      // Swift.print("It Works!!!")
      onClickUpInside()
   }
   /**
    * Adds correct cursor for button
    */
   open override func resetCursorRects() {
      super.resetCursorRects()
      addCursorRect(bounds, cursor: .pointingHand)
   }
}
#endif
//The above specifies callback on 'self' to be the function
//@objc func myAction(obj:AnyObject?){//dropping the obj arg also works
//   print("press")
//   if let btn = obj as? NSButton{
//      print(btn.title)
//   }
//}
