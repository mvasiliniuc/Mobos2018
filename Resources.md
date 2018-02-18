# Resources

The following are the resources used in preparation of [my talk at Mobos 2018](http://romobos.com/blog/mircea-vasiliniuc-on-tackling-common-vulnerabilities).
These page, together with the entire repo, can be used as starting point for finding and solving vulnerabilities in iOS applications.

## Books
* [iOS Application Security: The Definitive Guide for Hackers and Developers](https://www.amazon.com/iOS-Application-Security-Definitive-Developers-ebook/dp/B01BLVZ3IK/ref=mt_kindle?_encoding=UTF8&me=) by David Thiel

## Web platforms

### OWASP

* [Open Web Application Security Project (OWASP)](https://www.owasp.org/index.php/Main_Page)
* [IOS Developer Cheat Sheet](https://www.owasp.org/index.php/IOS_Developer_Cheat_Sheet)
* [The Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg)
* [IOS Application Security Testing Cheat Sheet](https://www.owasp.org/index.php/IOS_Application_Security_Testing_Cheat_Sheet)

### Others

* [Damn Vulnerable iOS Application](http://damnvulnerableiosapp.com/)

## Apple

* [iOS Security - iOS 11](https://www.apple.com/business/docs/iOS_Security_Guide.pdf)
* [Security](https://developer.apple.com/security/)
* [Protecting the User's Privacy](https://developer.apple.com/documentation/uikit/core_app/protecting_the_user_s_privacy)
* [Secure Coding Guide](https://developer.apple.com/library/content/documentation/Security/Conceptual/SecureCodingGuide/Introduction.html)

## Generic Web Articles

### Technical
* [Collection of the most common vulnerabilities found in iOS applications](https://github.com/felixgr/secure-ios-app-dev)
* [Setting Up a Testing Environment for iOS Platform](https://agostini.tech/2017/11/20/ios-application-security-part-1-setting-up-a-testing-environment-for-ios-platform/)
* [ftc.gov - App Developers: Start with Security](https://www.ftc.gov/tips-advice/business-center/guidance/app-developers-start-security)
* [Secure Coding Practices for IOS Development](http://resources.infosecinstitute.com/ios-application-security-part-25-secure-coding-practices-ios-development/#gref)
* [Malware for iOS](https://www.theiphonewiki.com/wiki/Malware_for_iOS)
* [iOS Security 101](https://swifting.io/blog/2016/08/09/21-ios-security-101/)
* [The ultimate security vulnerability datasource](https://www.cvedetails.com/vulnerability-list/vendor_id-49/product_id-15556/Apple-Iphone-Os.html)

### News
* [Appthority Pulse Report Reveals Top Blacklisted Apps by Enterprises](https://www.appthority.com/company/press/press-releases/appthority-pulse-report-reveals-top-blacklisted-apps-enterprises/)
* [76 Popular Apps Confirmed Vulnerable to Silent Interception of TLS-Protected Data](https://medium.com/@chronic_9612/76-popular-apps-confirmed-vulnerable-to-silent-interception-of-tls-protected-data-2c9a2409dd1)

## Security Audits

* [OSX and iOS related security tools](https://github.com/ashishb/osx-and-ios-security-awesome)
* [SAST](https://www.checkmarx.com/glossary/static-application-security-testing-sast/)
* [How to get started with mobile penetration testing for iOS](https://learn.techbeacon.com/units/how-get-started-mobile-penetration-testing-ios)
* [Automated Security Analysis of Android and iOS Applications](http://searchsecurity.techtarget.com/feature/Automated-Security-Analysis-of-Android-and-iOS-Applications)
* [Code Quality and Build Settings for iOS Apps](https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06i-Testing-Code-Quality-and-Build-Settings.md)

### Open Source
* [MobSF](https://github.com/MobSF/Mobile-Security-Framework-MobSF)
* [needle](https://github.com/mwrlabs/needle)
* [idbtool](http://www.idbtool.com/)

### Security Audit Providers
* [checkmarx](https://www.checkmarx.com)
* [verify](https://www.verify.ly)
* [veracode](https://www.veracode.com)
* [cyberalphasecurity](https://www.cyberalphasecurity.com)
* [teskalabs](https://www.teskalabs.com)
* [beijaflore](https://www.beijaflore.com)
* [tarlogic](https://www.tarlogic.com)
* [snoop-it](https://code.google.com/archive/p/snoop-it/)


## Vulnerabilities in the presentation

### Task Switcher

#### Apple

* [Preventing Sensitive Information From Appearing In The Task Switcher](https://developer.apple.com/library/content/qa/qa1838/_index.html)
* [App Programming Guide for iOS - Strategies for Handling App State Transitions](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/StrategiesforHandlingAppStateTransitions/StrategiesforHandlingAppStateTransitions.html)

#### Blocking screenshots

* [Secure Messaging App Confide Can Now Block iPhone Screenshots
](http://fortune.com/2018/01/10/confide-messaging-app-apple-iphone-screenshot/)
* [ScreenShieldKit](https://screenshieldkit.com/)

### State Preservation

#### Apple

* [Preserving Your App's UI Across Launches](https://developer.apple.com/documentation/uikit/view_controllers/preserving_your_app_s_ui_across_launches)
* [Inspecting iOS State Restoration Data](http://frosty.blog/2017/05/10/inspecting-ios-state-restoration-data/)

### Keyboard Logging

#### Apple
* [App Extension Programming Guide - Custom Keyboard](https://developer.apple.com/library/content/documentation/General/Conceptual/ExtensibilityPG/CustomKeyboard.html)

* [shouldAllowExtensionPointIdentifier](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623122-application)

#### Tech articles
* [Security of Third-Party Keyboard Apps on Mobile Devices](https://zeltser.com/third-party-keyboards-security)

#### Tools used in demo
* https://getsandbox.com/

#### News

* [AiType potential leak](http://appleinsider.com/articles/17/12/06/data-of-31-million-users-of-iphone-add-on-keyboard-aitype-potentially-leaks)
* [Swiftkey potential leak](https://www.digitaltrends.com/mobile/swiftkey-data-leak/)

### Pasteboards

* [UIPasteboard](https://developer.apple.com/documentation/uikit/uipasteboard)
* [Cocoa Application Competencies for iOS](https://developer.apple.com/library/content/documentation/General/Conceptual/Devpedia-CocoaApp/Pasteboard.html)
* [Text Programming Guide for iOS](https://developer.apple.com/library/content/documentation/StringsTextFonts/Conceptual/TextAndWebiPhoneOS/UsingCopy,Cut,andPasteOperations/UsingCopy,Cut,andPasteOperations.html)


## Other topics

### Encryption

* [RNCryptor framework in ObjC](https://github.com/RNCryptor/RNCryptor-objc)
* [RSA public/private key encryption in Swift](https://github.com/TakeScoop/SwiftyRSA)

### Jailbreak Detection

* [Jailbreak Detection and Evasion](http://highaltitudehacks.com/2013/12/17/ios-application-security-part-24-jailbreak-detection-and-evasion/)
