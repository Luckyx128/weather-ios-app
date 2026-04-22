//
//  DailyTableViewCell.swift
//  Wather App
//
//  Created by Lucas de Amorim on 21/04/26.
//

import UIKit

class DailyTableViewCell: UITableViewCell {
    
    static let identifier: String = "DailyTableView"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [dailyLabel, iconImageView, minLabel, maxLabel])
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins =  NSDirectionalEdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20)
        stackView.spacing = 15
        return stackView
    }()
    
    private lazy var dailyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TER"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    private lazy var minLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "min 25°C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    private lazy var maxLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "max 25°C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cloudIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        setContrainstsToParent( contentView)
        NSLayoutConstraint.activate([
            dailyLabel.widthAnchor.constraint(equalToConstant: 50),
            iconImageView.widthAnchor.constraint(equalToConstant: 143)
        ])
    }
    
}

extension UIView {
    func setContrainstsToParent(_ parent:UIView){
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])
    }
}
