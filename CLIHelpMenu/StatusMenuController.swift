

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!

    var preferencesWindow: PreferencesWindow!

    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        statusItem.menu = statusMenu
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    @IBAction func askQuestionClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"ask-question")! as URL)
    }
    
    
    @IBAction func linuxClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/linux")! as URL)
    }
    
    
    @IBAction func macosClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/macos")! as URL)
    }
    
    
    @IBAction func networkingClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/networking")! as URL)
    }
    
    
    @IBAction func generalQClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/general")! as URL)
    }
    
    
    @IBAction func windowsClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/windows")! as URL)
    }
    
    
    @IBAction func helpAndSupportClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"help")! as URL)
    }
    
    
    @IBAction func getInvolvedClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"get-involved")! as URL)
    }
    
    
    @IBAction func contactClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"contact-us")! as URL)
    }
    
    @IBAction func personalActivityClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"user/activity")! as URL)
    }
    
    
    @IBAction func donateClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"donate")! as URL)
    }
    
    @IBAction func improveClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"clihelp-macos-app")! as URL)
    }
    
    @IBAction func cliHelpClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/")! as URL)
    }
    
    
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
}
