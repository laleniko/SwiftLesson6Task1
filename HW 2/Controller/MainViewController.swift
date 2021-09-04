//
//  MainViewController.swift
//
//  Created by Николай Ларьков on 03.09.2021.
//

import UIKit

protocol SettingViewControllerDelegate {
    func color(color: Color)
}

class MainViewController: UIViewController {
    private var color = Color.getDefaultColor()

    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = color
        settingsVC.delegate = self
    }
    
    private func setColor() {
        print(color)
        view.backgroundColor = UIColor(
            red: CGFloat(color.red),
            green: CGFloat(color.green),
            blue: CGFloat(color.blue),
            alpha: 1
        )
    }


}

extension MainViewController: SettingViewControllerDelegate {
    func color(color: Color) {
        self.color = color
        setColor()
    }
}
