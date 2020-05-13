//
//  ViewController.swift
//  Solar System
//
//  Created by Yogesh Sehgal on 12/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
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
        //sceneView.showsStatistics = true
        
        let earth = SCNSphere(radius: 0.1)
        let sun = SCNSphere(radius: 0.5)
        let mercury = SCNSphere(radius: 0.0383)
        let venus = SCNSphere(radius: 0.0949)
        let jupiter = SCNSphere(radius: 0.4)
        let saturn = SCNSphere(radius: 0.3)
        let uranus = SCNSphere(radius: 0.2)
        let neptune = SCNSphere(radius: 0.1)
        let mars = SCNSphere(radius: 0.0533)

        
        let material = SCNMaterial()
        let sun_material=SCNMaterial()
        let mercury_material = SCNMaterial()
        let venus_material=SCNMaterial()
        let jupiter_material = SCNMaterial()
        let saturn_material=SCNMaterial()
        let uranus_material = SCNMaterial()
        let neptune_material=SCNMaterial()
        let mars_material=SCNMaterial()
        
        material.diffuse.contents=UIImage(named:"art.scnassets/Earth.jpeg")
        sun_material.diffuse.contents=UIImage(named:"art.scnassets/Sun.jpg")
        mercury_material.diffuse.contents=UIImage(named:"art.scnassets/Mercury.jpeg")
        venus_material.diffuse.contents=UIImage(named:"art.scnassets/Venus.jpg")
        jupiter_material.diffuse.contents=UIImage(named:"art.scnassets/Jupiter.jpeg")
        saturn_material.diffuse.contents=UIImage(named:"art.scnassets/Saturn.jpeg")
        uranus_material.diffuse.contents=UIImage(named:"art.scnassets/Uranus.jpeg")
        neptune_material.diffuse.contents=UIImage(named:"art.scnassets/Neptune.jpeg")
        mars_material.diffuse.contents=UIImage(named:"art.scnassets/Mars.jpeg")

        
        earth.materials=[material]
        sun.materials=[sun_material]
        mercury.materials=[mercury_material]
        venus.materials=[venus_material]
        jupiter.materials=[jupiter_material]
        saturn.materials=[saturn_material]
        uranus.materials=[uranus_material]
        neptune.materials=[neptune_material]
        mars.materials=[mars_material]
        
        let node = SCNNode()
        let sun_node=SCNNode()
        let mercury_node = SCNNode()
        let venus_node=SCNNode()
        let jupiter_node = SCNNode()
        let saturn_node=SCNNode()
        let uranus_node = SCNNode()
        let neptune_node=SCNNode()
        let mars_node=SCNNode()
        
        node.position=SCNVector3(x: 0, y: 0.1, z: -0.3)
        sun_node.position=SCNVector3(x: -1.5, y: 0.1, z: -1)
        mercury_node.position=SCNVector3(x: -0.8, y: 0.1, z: -0.6)
        venus_node.position=SCNVector3(x: -0.6, y: 0.1, z: -0.4)
        jupiter_node.position=SCNVector3(x: 0.9, y: 0.4, z: -0.8)
        saturn_node.position=SCNVector3(x: 1, y: -0.3, z: -1)
        uranus_node.position=SCNVector3(x: 1.1, y: 0.5, z: -1.4)
        neptune_node.position=SCNVector3(x: 1.2, y: 0.1, z: -1.8)
        mars_node.position=SCNVector3(x: -0.4, y: 0.1, z: -0.5)
        
        node.geometry=earth
        sun_node.geometry=sun
        mercury_node.geometry=mercury
        venus_node.geometry=venus
        jupiter_node.geometry=jupiter
        saturn_node.geometry=saturn
        uranus_node.geometry=uranus
        neptune_node.geometry=neptune
        mars_node.geometry=mars
        
        sceneView.scene.rootNode.addChildNode(node)
        sceneView.scene.rootNode.addChildNode(sun_node)
        sceneView.scene.rootNode.addChildNode(mercury_node)
        sceneView.scene.rootNode.addChildNode(venus_node)
        sceneView.scene.rootNode.addChildNode(jupiter_node)
        sceneView.scene.rootNode.addChildNode(saturn_node)
        sceneView.scene.rootNode.addChildNode(uranus_node)
        sceneView.scene.rootNode.addChildNode(neptune_node)
        sceneView.scene.rootNode.addChildNode(mars_node)
        
        sceneView.autoenablesDefaultLighting=true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

}
