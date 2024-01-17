//
//  ViewController.swift
//  TabBarApp
//
//  Created by Максим Сылка on 16.01.2024.
//

import UIKit

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as ? UITabBarController
        tabBarVC?.viewControllers?.forEach {
            VC in
            if let firstVC = vc as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            }
        }
    }

}

