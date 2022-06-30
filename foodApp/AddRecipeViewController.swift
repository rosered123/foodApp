//
//  AddRecipeViewController.swift
//  foodApp
//
//  Created by Jade Park on 6/30/22.
//

import UIKit

class AddRecipeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
        
        
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
    
    /*
     class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
     
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
     */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
