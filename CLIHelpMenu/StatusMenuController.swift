

import Cocoa

class StatusMenuController: NSObject, PreferencesWindowDelegate {    
    @IBOutlet weak var statusMenu: NSMenu!

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
    
    func openCliHelpWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/")! as URL)
    }
    
    @IBAction func askQuestionClicked(_ sender: NSMenuItem) {
        openAskQuestionWeb()
    }
    
    func openAskQuestionWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"ask-question")! as URL)
    }
    
    @IBAction func linuxClicked(_ sender: NSMenuItem) {
        openLinuxWeb()
    }
    
    func openLinuxWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/linux")! as URL)
    }
    
    @IBAction func macosClicked(_ sender: NSMenuItem) {
        openMacosWeb()
    }
    
    func openMacosWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/macos")! as URL)
    }
    
    @IBAction func networkingClicked(_ sender: NSMenuItem) {
        openNetworkingWeb()
    }
    
    func openNetworkingWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/networking")! as URL)
    }
    
    @IBAction func generalQClicked(_ sender: NSMenuItem) {
        openGeneralQWeb()
    }
    
    func openGeneralQWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/general")! as URL)
    }
    
    @IBAction func windowsClicked(_ sender: NSMenuItem) {
        openWindowsWeb()
    }
    
    func openWindowsWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"questions/windows")! as URL)
    }
    
    @IBAction func helpAndSupportClicked(_ sender: NSMenuItem) {
        openHelpAndSupportWeb()
    }
    
    func openHelpAndSupportWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"help")! as URL)
    }
    
    @IBAction func getInvolvedClicked(_ sender: NSMenuItem) {
        openGetInvolvedWeb()
    }
    
    func openGetInvolvedWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"get-involved")! as URL)
    }
    
    @IBAction func contactClicked(_ sender: NSMenuItem) {
        openContactWeb()
    }
    
    func openContactWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"contact-us")! as URL)
    }
    
    @IBAction func personalActivityClicked(_ sender: NSMenuItem) {
        openPersonalActivityWeb()
    }
    
    func openPersonalActivityWeb() {
        NSWorkspace.shared().open(NSURL(string: "https://community.clihelp.org/"+"user/activity")! as URL)
    }
    
    @IBAction func cliHelpClicked(_ sender: NSMenuItem) {
        openCliHelpWeb()
    }
    
    
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    func preferencesDidUpdate() {
        openCliHelpWeb()
    }
}
