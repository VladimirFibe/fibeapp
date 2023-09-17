//
//  ViewController.swift
//  HelloWorld
//
//  Created by Vladimir Fibe on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "globe")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .label
        return imageView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World"
        label.font = .systemFont(ofSize: 53)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        [imageView, label].forEach { view.addSubview($0)}
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),

            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20)
        ])
    }
}

