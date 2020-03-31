#if os(macOS)
import Cocoa
/**
 * Callbackbutton
 * let btn = CallBackButton(frame: .init(origin: .zero, size: .init(width: 40, height: 40)))
 * btn.image = NSImage(named: "plus")
 * btn.onClickUpInside { print("click") }
 * addSubview(btn)
 */
open class CallBackButton: NSButton {
   public var onClickUpInside: OnClickUpInside = defaultOnClickUpInside
   public override init(frame frameRect: NSRect) {
      super.init(frame: frameRect)
      self.target = self
      self.action =  #selector(handleButtonAction)
      self.isBordered = false
      self.wantsLayer = true // if true then view is layer backed
      self.title = "" // hides default lable
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable) // avoids subsequent need to add this method
   required public init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
#endif
// self.bezelStyle = .shadowlessSquare
// self.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
// might need to subclass NSButtonCell drawBezelWithFrame:inView to remove bezels etc
// button.setButtonType(.momentaryChange)
// button.isTransparent = false
