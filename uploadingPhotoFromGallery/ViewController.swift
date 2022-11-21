//
//  ViewController.swift
//  uploadingPhotoFromGallery
//
//  Created by ömer faruk coşar on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var photoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("pick Act")
        // Do any additional setup after loading the view.
    }

    @IBAction func pickAction(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
}
extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage{
            photoView.image = image
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}

