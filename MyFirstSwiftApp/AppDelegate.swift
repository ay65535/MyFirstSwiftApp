//
//  AppDelegate.swift
//  MyFirstSwiftApp
//
//  Created by ats on 2014/08/02.
//
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var txtFirstName: NSTextField!
    @IBOutlet weak var txtLastName: NSTextField!
    @IBOutlet weak var txtFullName: NSTextField!

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


    @IBAction func btnConcatenate(sender: AnyObject) {
        txtFullName.stringValue = txtFirstName.stringValue + " " + txtLastName.stringValue
        
        let myPopup:NSAlert = NSAlert()
        
        myPopup.messageText = "Success!"
        myPopup.informativeText = "Results are shown in the Full Name field. And the result is: \(txtFullName.stringValue)"
        
        myPopup.runModal()
    }
}

