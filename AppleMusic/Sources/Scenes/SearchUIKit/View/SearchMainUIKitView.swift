//
//  SearchUIKitView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 24.09.2022.
//

import SwiftUI

struct SearchMainUIKitView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        return UINavigationController(rootViewController: SearchViewController()) 
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
