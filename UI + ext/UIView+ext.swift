//
//  UIView + ext.swift
//  Created by Антон on 23.04.2022.
//
// расширение для UIView, растягивает объекты по сторонам.

import UIKit

extension UIView {
	
	func pin(to superView: UIView) {
		translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			topAnchor.constraint(equalTo: superView.topAnchor),
			leadingAnchor.constraint(equalTo: superView.leadingAnchor),
			trailingAnchor.constraint(equalTo: superView.trailingAnchor),
			bottomAnchor.constraint(equalTo: superView.bottomAnchor)
		])
	}
}
