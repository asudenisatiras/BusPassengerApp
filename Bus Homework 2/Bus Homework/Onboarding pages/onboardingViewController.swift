//
//  onboardingViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//

import UIKit

class onboardingViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
   
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var currentPage = 0
    
    @IBOutlet weak var pageControl: UIPageControl!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.addTarget(self, action: #selector(pageControlDidChande(_:)), for: .valueChanged)
        scrollView.delegate = self
        
    }
    
    @objc private func pageControlDidChande(_ sender: UIPageControl) {
        
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current)*view.frame.size.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if scrollView.subviews.count == 0 {
            configureScrollView()
            
        }
    }
    
    private func configureScrollView() {
        
        scrollView.contentSize = CGSize(width: view.frame.size.width*3, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
    
        
        let sentences: [String] = [" We are here to ensure you have a comfortable travel experience while traveling at the best prices.", "We don't want to stress before we have to travel! Plan ahead and enjoy the journey using our bus ticketing app", "Choose our bus ticketing app and enjoy the convenience of traveling! Enjoy a comfortable journey by purchasing your tickets at the most affordable prices."]
        
        let images: [String] = ["otobüs", "kadin", "adam"]
      
        
        for i in 0..<3 {
            let screens = UIView(frame: CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
          
            scrollView.addSubview(screens)
            

            let imageInformations = UILabel(frame: CGRect(x: CGFloat(i)*view.frame.size.width, y: scrollView.frame.size.height/2.7, width: view.frame.size.width, height: scrollView.frame.size.height))
           
            imageInformations.textAlignment = .center
            imageInformations.numberOfLines = 3
            
            imageInformations.frame = imageInformations.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10))
            imageInformations.text = sentences[i]
            scrollView.addSubview(imageInformations)
          
            
            let image = UIImageView(frame: CGRect(x: CGFloat(i)*view.frame.size.width, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height))
            
            image.image = UIImage(named: images[i])
            image.contentMode = .scaleAspectFit
            scrollView.addSubview(image)
            
           
        }
    }

    
    @IBAction func nextButton(_ sender: UIButton) {
    
    if currentPage < pageControl.numberOfPages {
            pageControl.currentPage += 1
            if scrollView.subviews.count == 0 {
                configureScrollView()
                
            }
            scrollView.setContentOffset(CGPoint(x: CGFloat(pageControl.currentPage)*view.frame.size.width, y: 0), animated: true)
            if pageControl.currentPage == 2 {
                nextBtn.setTitle("Get Started", for: .normal)
            }else{
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
        
}


// Sayfayı scroll ettiğimizde noktalarında değişmesini sağlıyor.
extension onboardingViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(floor(Float(scrollView.contentOffset.x) / Float(scrollView.frame.size.width)))
        if pageControl.currentPage == 2 {
            nextBtn.setTitle("Get Started", for: .normal)
        }else{
            nextBtn.setTitle("Next", for: .normal)
        }
      
    }
}
