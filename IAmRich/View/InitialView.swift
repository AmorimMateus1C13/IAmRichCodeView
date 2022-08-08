//
//  InitialView.swift
//  IAmRich
//
//  Created by Mateus Amorim on 08/08/22.
//


import UIKit
import SnapKit

class InitialView: UIView {
    
    lazy var labelRich: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.text = constants.title
        return label
    }()
    
    lazy var imageDiamont: UIImageView = {
        let imageView = UIImageView()
        let bandle = Bundle(for: InitialView.self)
        if let imageDiamond = UIImage(named: constants.diamond, in: bandle, compatibleWith: nil){
            imageView.image = imageDiamond
        }
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = Colors.background
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension InitialView: ViewConfiguration {
    func buildViewHierarchy() {
        addSubview(labelRich)
        addSubview(imageDiamont)
    }

    func setupConstraints() {

        imageDiamont.snp.makeConstraints { make in
            make.height.equalTo(150)
            make.width.equalTo(150)
            make.centerY.centerX.equalToSuperview()
        }

        labelRich.snp.makeConstraints { make in
            make.bottom.equalTo(imageDiamont.snp.top).offset(16)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
    }
}
