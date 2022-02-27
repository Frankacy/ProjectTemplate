import Foundation
import UIKit

protocol ViewControllerDelegate: AnyObject {
  
}

class ViewController: UIViewController {
  weak var delegate: ViewControllerDelegate?
  
  init() {
    super.init(nibName: nil, bundle: nil)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
  }
  
  @available(*, unavailable)
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
