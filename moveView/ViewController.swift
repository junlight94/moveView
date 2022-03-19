//
//  ViewController.swift
//  moveView
//
//  Created by Junyoung Lee on 2022/03/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moveView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(drag))
        moveView.addGestureRecognizer(gesture)
    }
    
    @objc func drag(_ sender: UIPanGestureRecognizer) {
        

        //손가락의 위치를 point에 저장
        let point = sender.location(in: view)

        //손가락이 클릭하고 있는 view를 draggedView에 저장
        let draggedView = sender.view!

        //draggedView의 중심을 손가락 위치인 point에 따라 움직인다
        draggedView.center = point
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(moveView.frame.origin.x)
        print(moveView.frame.origin.y)
        
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

}

