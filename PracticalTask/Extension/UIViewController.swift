//
//  File.swift
//  ExamPrepHub
//
//  Created by Venkatesh Savarala on 15/01/22.
//

import UIKit
extension UIViewController {
    func configureUserUI(btnParent:UIButton,btnStudent:UIButton,btnTeacher:UIButton) {
//        btnParent.setTitle(LanguageStrings.Login.parentText, for: .normal)
//        btnStudent.setTitle(LanguageStrings.Login.studentText, for: .normal)
//        btnTeacher.setTitle(LanguageStrings.Login.teacherText, for: .normal)
        
//        btnParent.setTitleColor(UIColor(hexString: "2F2F8E"), for: .normal)
//        btnStudent.setTitleColor(UIColor(hexString: "2F2F8E"), for: .normal)
//        btnTeacher.setTitleColor(UIColor(hexString: "2F2F8E"), for: .normal)
        
        btnParent.setTitleColor(.white, for: .selected)
        btnStudent.setTitleColor(.white, for: .selected)
        btnTeacher.setTitleColor(.white, for: .selected)
//        btnTeacher.titleLabel?.font = .OpenSans(.regular, size: 22)
//        btnStudent.titleLabel?.font = .OpenSans(.regular, size: 22)
//        btnParent.titleLabel?.font = .OpenSans(.regular, size: 22)
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func isValidPassword(password: String) -> Bool {
        let emailRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{6,}$"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: password)
    }
    

}
