//
//  PridelandCollectionViewCell.swift
//  OpenTerm
//
//  Created by Louis D'hauwe on 01/04/2018.
//  Copyright © 2018 Silver Fox. All rights reserved.
//

import UIKit

class PridelandCollectionViewCell: UICollectionViewCell {

	let gradientLayer = CAGradientLayer()

	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var descriptionLbl: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()

		gradientLayer.colors = [UIColor.white.cgColor, UIColor.black.cgColor]
		gradientLayer.startPoint = .zero
		gradientLayer.endPoint = CGPoint(x: 1, y: 1)
		
		self.contentView.layer.insertSublayer(gradientLayer, at: 0)
	
		self.contentView.layer.cornerRadius = 16.0
		self.contentView.layer.masksToBounds = true
		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		gradientLayer.frame = self.contentView.bounds

	}
	
	func show(_ prideland: PridelandOverview) {
		
		titleLbl.text = prideland.metadata.name
		descriptionLbl.text = prideland.metadata.description
		
		updateGradient(hue: prideland.metadata.hueTint)
		
	}
	
	private func updateGradient(hue: Double) {
		
		let gradientColor1 = UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 1.0, alpha: 1.0)
		let gradientColor2 = UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 0.6, alpha: 1.0)

		gradientLayer.colors = [gradientColor1.cgColor, gradientColor2.cgColor]
		
	}

}
