//
//  GameViewController.swift
//  SceneKitDemo
//
//  Created by Migu on 2018/2/22.
//  Copyright © 2018年 VIctorChee. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene()
        scene.background.contents = UIColor.black
        // Create camera
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3.init(0, 0, 2)
        scene.rootNode.addChildNode(cameraNode)
        // Create lights
        let redLightNode = SCNNode()
        redLightNode.light = SCNLight()
        redLightNode.light?.type = .omni
        redLightNode.light?.color = UIColor.red
        redLightNode.position = SCNVector3.init(6, 6, 0)
        scene.rootNode.addChildNode(redLightNode)
        let greenLightNode = SCNNode()
        greenLightNode.light = SCNLight()
        greenLightNode.light?.type = .omni
        greenLightNode.light?.color = UIColor.green
        greenLightNode.position = SCNVector3.init(-6, 6, 0)
        scene.rootNode.addChildNode(greenLightNode)
        let blueLightNode = SCNNode()
        blueLightNode.light = SCNLight()
        blueLightNode.light?.type = .omni
        blueLightNode.light?.color = UIColor.blue
        blueLightNode.position = SCNVector3.init(0, -6, 0)
        scene.rootNode.addChildNode(blueLightNode)
        // Create geometry
        let geometryNode = SCNNode()
        geometryNode.geometry = SCNSphere.init(radius: 0.5)
        geometryNode.position = SCNVector3.init(0, 0, 0)
        scene.rootNode.addChildNode(geometryNode)
        
        let scnView = self.view as! SCNView
        scnView.scene = scene
        scnView.allowsCameraControl = true
        scnView.showsStatistics = true
        scnView.backgroundColor = UIColor.black
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
