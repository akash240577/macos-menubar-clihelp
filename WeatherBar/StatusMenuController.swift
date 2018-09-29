

import Cocoa

class StatusMenuController: NSObject, PreferencesWindowDelegate {    
    @IBOutlet weak var statusMenu: NSMenu!

    var weatherMenuItem: NSMenuItem!
    var preferencesWindow: PreferencesWindow!

    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        statusItem.menu = statusMenu
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
        preferencesWindow = PreferencesWindow()
        preferencesWindow.delegate = self
        
    }
    
    func OpenCliHelpWeb() {
        
    }
    
    @IBAction func updateClicked(_ sender: NSMenuItem) {
        OpenCliHelpWeb()
    }
    
    
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    func preferencesDidUpdate() {
        OpenCliHelpWeb()
    }
}
