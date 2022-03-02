import Foundation
import UIKit

class RootCoordinator: UIViewController {
  let rootController = UINavigationController()
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  override func loadView() {
    let view = UIView()
    
    rootController.viewControllers = [ViewController()]
    addChild(rootController)
    rootController.view.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(rootController.view)
    NSLayoutConstraint.activate([
      rootController.view.topAnchor.constraint(equalTo: view.topAnchor),
      rootController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      rootController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      rootController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
    rootController.didMove(toParent: self)

    self.view = view
  }
  
  @available(*, unavailable)
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) is not supported")
  }
}
