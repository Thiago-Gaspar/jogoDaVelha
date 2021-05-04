//
//  Strings+Extension.swift
//  jogoDaVelha
//
//  Created by Thiago Gaspar on 03/05/21.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
