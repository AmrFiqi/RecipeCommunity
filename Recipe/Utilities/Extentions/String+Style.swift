//
//  String+Style.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 27/05/2023.
//

import UIKit


extension String {
    func capitalizeFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}
