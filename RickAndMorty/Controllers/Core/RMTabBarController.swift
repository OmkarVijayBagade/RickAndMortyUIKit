//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Omkar Vijay Bagade on 28/07/26.
//

import UIKit

/// Controller to keep tabs and root tab controller
final class RMTabBarController: UITabBarController {
    
    /// runs only once per ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }

    private func setupTabs() {

        /// created objects for the ViewControllers
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()

        /// individual navigation items in the tabbar
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        /// assigning the ViewControllers to the navitems
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)

        /// giving the navitems properties title, image, tag for switching
        nav1.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        nav2.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 2
        )
        nav3.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 3
        )
        nav4.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 4
        )

        /// populating using for loop into the tabbar
        for nav in [
            nav1,
            nav2,
            nav3,
            nav4,
        ] {
            nav.navigationBar.isTranslucent = false
            nav.navigationBar.prefersLargeTitles = true
        }

        setViewControllers(
            [
                nav1,
                nav2,
                nav3,
                nav4,
            ],
            animated: true
        )
    }
}
