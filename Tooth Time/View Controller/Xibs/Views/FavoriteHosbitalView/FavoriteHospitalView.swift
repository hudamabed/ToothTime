//
//  FavoriteHospitalView.swift
//  Tooth Time
//
//  Created by Abdallah Edres on 24/10/2024.
//

import UIKit

class FavoriteHospitalView: UIView {
    let nibName = "FavoriteHospitalView"
   
    //MARK: - init -
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    //MARK: - LifeCycle -
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

}
