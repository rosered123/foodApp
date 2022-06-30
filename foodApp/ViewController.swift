//
//  ViewController.swift
//  foodApp
//
//  Created by Paras Goel on 6/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
     import UIKit

     class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
         
         var imagePicker = UIImagePickerController()
         
         override func viewDidLoad() {
             super.viewDidLoad()
             imagePicker.delegate = self
         }

         @IBAction func choosePhotoTapped(_ sender: Any) {
             imagePicker.sourceType = .photoLibrary
             present(imagePicker, animated: true, completion: nil)
         }
         
         @IBAction func takeASelfieTapped(_ sender: Any) {
             imagePicker.sourceType = .camera
             present(imagePicker, animated: true, completion: nil)
         }
         
         @IBOutlet weak var imageDisplay: UIImageView!
         
         func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
             // update our photo with the selected photo
             if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                 imageDisplay.image = selectedImage
             }
             
             // go back to our ViewController so the user can SEE the update
             imagePicker.dismiss(animated: true, completion: nil)
         }
         
     }
     */

}

