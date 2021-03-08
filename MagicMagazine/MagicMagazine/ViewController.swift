//
//  ViewController.swift
//  MagicMagazine
//
//  Created by Alia Dudkin on 3/5/21.
//

import UIKit
import SceneKit
import ARKit


class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let trackedImages = ARReferenceImage.referenceImages(inGroupNamed: "MagazineImages", bundle: Bundle.main) {
            
            configuration.trackingImages = trackedImages
            
            configuration.maximumNumberOfTrackedImages = 3
                    
        }
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    // MARK: - ARSCNViewDelegate
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
            
            if imageAnchor.referenceImage.name == "sweetpotatosticks" {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                    let videoNode = SKVideoNode(fileNamed: "sweetpotatosticks.mp4")
                    
                    videoNode.play()
                    
                    let videoScene = SKScene(size: CGSize(width: 1128, height: 636))
                    
                    videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                    
                    videoNode.yScale = -1.0
                    
                    videoScene.addChild(videoNode)
                    
                    let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
                    
                    plane.firstMaterial?.diffuse.contents = videoScene
                    
                    let planeNode = SCNNode(geometry: plane)
                    
                    planeNode.eulerAngles.x = -.pi / 2
                    
                    node.addChildNode(planeNode)
                }
                
            }
            
            else if imageAnchor.referenceImage.name == "hotmulledwine" {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                 
                    let videoNode = SKVideoNode(fileNamed: "hotmulledwine.mp4")
                    
                    videoNode.play()
                    
                    let videoScene = SKScene(size: CGSize(width: 938, height: 528))
                    
                    videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                    
                    videoNode.yScale = -1.0
                    
                    videoScene.addChild(videoNode)
                    
                    let plane = SCNPlane(width: 0.4, height: 0.3)
                    
                    plane.firstMaterial?.diffuse.contents = videoScene
                    
                    let planeNode = SCNNode(geometry: plane)
                    
                    planeNode.eulerAngles.x = -.pi / 2
                    
                    node.addChildNode(planeNode)
                }
                
            }
            
            
            else if imageAnchor.referenceImage.name == "carnitas" {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                    let videoNode = SKVideoNode(fileNamed: "carnitas.mp4")
                    
                    videoNode.play()
                    
                    let videoScene = SKScene(size: CGSize(width: 1270, height: 714))
                    
                    videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                    
                    videoNode.yScale = -1.0
                    
                    videoScene.addChild(videoNode)
                    
                    let plane = SCNPlane(width: 0.4, height: 0.3)
                    
                    plane.firstMaterial?.diffuse.contents = videoScene
                    
                    let planeNode = SCNNode(geometry: plane)
                    
                    planeNode.eulerAngles.x = -.pi / 2
                    
                    node.addChildNode(planeNode)
                    
                }
            }
            else if imageAnchor.referenceImage.name == "pumpkinspice" {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                    let videoNode = SKVideoNode(fileNamed: "pumpkinspice.mp4")
                    
                    videoNode.play()
                    
                    let videoScene = SKScene(size: CGSize(width: 1212, height: 682))
                    
                    videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                    
                    videoNode.yScale = -1.0
                    
                    videoScene.addChild(videoNode)
                    
                    let plane = SCNPlane(width: 0.4, height: 0.3)
                    
                    plane.firstMaterial?.diffuse.contents = videoScene
                    
                    let planeNode = SCNNode(geometry: plane)
                    
                    planeNode.eulerAngles.x = -.pi / 2
                    
                    node.addChildNode(planeNode)
                    
                }
            }
            else if imageAnchor.referenceImage.name == "cranberrycake" {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {

                    let videoNode = SKVideoNode(fileNamed: "cranberrycake.mp4")
                    
                    videoNode.play()
                    
                    let videoScene = SKScene(size: CGSize(width: 1364, height: 764))
                    
                    videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                    
                    videoNode.yScale = -1.0
                    
                    videoScene.addChild(videoNode)
                    
                    let plane = SCNPlane(width: 0.4, height: 0.3)
                    
                    plane.firstMaterial?.diffuse.contents = videoScene
                    
                    let planeNode = SCNNode(geometry: plane)
                    
                    planeNode.eulerAngles.x = -.pi / 2
                    
                    node.addChildNode(planeNode)
                    
                }
            }
        }
        return node
    }
}
