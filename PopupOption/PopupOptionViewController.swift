//
//  PopupOptionViewController.swift
//  PopupOption
//
//  Created by I Ketut AC Pratama on 10/20/18.
//  Copyright © 2018 I Ketut AC Pratama. All rights reserved.
//

import UIKit

class PopupOptionViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    
    class CountryCodeInfo {
        var code: String
        var name: String
        var flag: String?
        
        init(code: String, name: String, flag: String?) {
            self.code = code
            self.name = name
            self.flag = flag
        }
    }
    
    var data = [CountryCodeInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        containerView.layer.cornerRadius = 16.0
        containerView.clipsToBounds = true
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        setupCountryCodeData()
    }
    
    func setupCountryCodeData() {
        self.data.append(CountryCodeInfo(code: "+61", name: "Australia", flag: "🇦🇺"))
        self.data.append(CountryCodeInfo(code: "+60", name: "Malaysia", flag: "🇲🇾"))
        self.data.append(CountryCodeInfo(code: "+62", name: "Indonesia", flag: "🇮🇩"))
        self.data.append(CountryCodeInfo(code: "+63", name: "Philippines", flag: "🇵🇭"))
        self.data.append(CountryCodeInfo(code: "+65", name: "Singapore", flag: "🇸🇬"))
        self.data.append(CountryCodeInfo(code: "+66", name: "Thailand", flag: "🇹🇭"))
        self.data.append(CountryCodeInfo(code: "+84", name: "Vietnam", flag: "🇻🇳"))
    }
    
    @IBAction func selectTapAction(_ sender: UIButton) {
        let index = pickerView.selectedRow(inComponent: 0)
        let cc = self.data[index]
        
        print("Selected country code: \(cc.code) for country \(cc.name) and flag \(cc.flag ?? "")")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PopupOptionViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let cc = self.data[row]
        return cc.code + " - " + (cc.flag ?? "") + " " + cc.name
    }
}
