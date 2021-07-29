//
//  FirstModuleCore.swift
//  FirstModule
//
//  Created by Derick, Derick | RASIA on 17/6/21.
//

import UIKit
@_implementationOnly import SharedModule

@objc public class FirstModuleCore: NSObject {
    
    @objc public func testHaha() {}
    
    @objc public func openFirstModuleStoryboard() {
        let navigationController = UINavigationController()
        let storyboard = UIStoryboard(name: "FirstModuleSB", bundle: Bundle.init(for: FirstModuleCore.self))
        let firstModuleVC = storyboard.instantiateViewController(withIdentifier: "FirstModuleVC") as!FirstModuleVC
        navigationController.pushViewController(firstModuleVC, animated: true)
        firstModuleVC.modalPresentationStyle = .fullScreen
        
        if let topVC = UIApplication.shared.getTopViewController() {
            topVC.present(navigationController, animated: true, completion: nil)
            
        }
    }
    
}

extension UIApplication {
    func getTopViewController() -> UIViewController? {
        //UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        if let rootViewController = self.keyWindow?.rootViewController {
            var topViewController: UIViewController = rootViewController

            while let presentedViewController = topViewController.presentedViewController {
                topViewController = presentedViewController
            }

            return topViewController
        } else {
            return nil
        }
    }
}
