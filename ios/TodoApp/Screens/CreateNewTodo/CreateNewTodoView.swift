//
//  CreateNewTodoView.swift
//  TodoApp
//
//  Created by Wellington Pereira on 13/03/20.
//  Copyright © 2020 Wellington Pereira. All rights reserved.
//

import UIKit

class CreateNewTodoView : UIView {
    
    let loadingView: UIActivityIndicatorView = {
        let loadingView = UIActivityIndicatorView()
        loadingView.color = .gray
        loadingView.style = .large
        return loadingView
    }()
    
    let titleField: TodoTextField = {
        let field = TodoTextField()
        field.labelText = "Title"
        field.labelTextColor = .black
        field.fieldTintColor = .black
        field.fieldTextColor = .black
        field.fieldBorderColor = .black
        return field
    }()
    
    let detailsField: TodoTextField = {
        let field = TodoTextField()
        field.labelText = "Details"
        field.labelTextColor = .black
        field.fieldTintColor = .black
        field.fieldTextColor = .black
        field.fieldBorderColor = .black
        return field
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CreateNewTodoView : CustomView {
    func buildViewHierarchy() {
        addSubview(loadingView)
        addSubview(titleField)
        addSubview(detailsField)
    }
    
    func setupConstraints() {
        loadingView.snp.makeConstraints {
            $0.centerY.equalTo(self)
            $0.centerX.equalTo(self)
        }
        
        titleField.snp.makeConstraints {
            $0.top.equalTo(self).offset(128)
            $0.leading.equalTo(16)
            $0.trailing.equalTo(-16)
        }
        
        detailsField.snp.makeConstraints {
            $0.leading.equalTo(16)
            $0.trailing.equalTo(-16)
            $0.top.equalTo(titleField.snp.bottom).offset(24)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
}
