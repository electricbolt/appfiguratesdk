// IntentHandler.swift
// WatchExample Intent Extension Copyright© 2020; Electric Bolt Limited.

import Intents
import AppfigurateLibrary

// As an example, this class is set up to handle Message intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send a message using <myApp>"
// "<myApp> John saying hello"
// "Search for messages in <myApp>"

class IntentHandler: INExtension, INSendMessageIntentHandling, INSearchForMessagesIntentHandling {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.handler(for:) boolean is \(b)");
        return self
    }
    
    // MARK: - INSendMessageIntentHandling
    
    // Implement resolution methods to provide additional information about your intent (optional).
    func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void) {
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.resolveRecipients(for:with:) boolean is \(b)");

        if let recipients = intent.recipients {
            
            // If no recipients were provided we'll need to prompt for a value.
            if recipients.count == 0 {
                completion([INPersonResolutionResult.needsValue()])
                return
            }
            
            var resolutionResults = [INPersonResolutionResult]()
            for recipient in recipients {
                let matchingContacts = [recipient] // Implement your contact matching logic here to create an array of matching contacts
                switch matchingContacts.count {
                case 2  ... Int.max:
                    // We need Siri's help to ask user to pick one from the matches.
                    resolutionResults += [INPersonResolutionResult.disambiguation(with: matchingContacts)]
                    
                case 1:
                    // We have exactly one matching contact
                    resolutionResults += [INPersonResolutionResult.success(with: recipient)]
                    
                case 0:
                    // We have no contacts matching the description provided
                    resolutionResults += [INPersonResolutionResult.unsupported()]
                    
                default:
                    break
                    
                }
            }
            completion(resolutionResults)
        }
    }
    
    func resolveContent(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.resolveContent(for:with:) boolean is \(b)");

        if let text = intent.content, !text.isEmpty {
            completion(INStringResolutionResult.success(with: text))
        } else {
            completion(INStringResolutionResult.needsValue())
        }
    }
    
    // Once resolution is completed, perform validation on the intent and provide confirmation (optional).
    
    func confirm(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void) {
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.confirm(intent:completion:) boolean is \(b)");
        // Verify user is authenticated and your app is ready to send a message.
        
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INSendMessageIntent.self))
        let response = INSendMessageIntentResponse(code: .ready, userActivity: userActivity)
        completion(response)
    }
    
    // Handle the completed intent (required).
    
    func handle(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void) {
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.handle(intent-send:completion:) boolean is \(b)");
        // Implement your application logic to send a message here.
        
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INSendMessageIntent.self))
        let response = INSendMessageIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }
    
    // Implement handlers for each intent you wish to handle.  As an example for messages, you may wish to also handle searchForMessages.
    
    // MARK: - INSearchForMessagesIntentHandling
    
    func handle(intent: INSearchForMessagesIntent, completion: @escaping (INSearchForMessagesIntentResponse) -> Void) {
        let b = (APLConfiguration.shared() as! ExampleConfiguration).boolean ? "true" : "false"
        print("IntentHandler.handle(intent-search:completion:) boolean is \(b)");
        // Return success to launch your Watch application with userActivity containing information for the message search on the interaction.
        
        let userActivity = NSUserActivity(activityType: NSStringFromClass(INSearchForMessagesIntent.self))
        let response = INSearchForMessagesIntentResponse(code: .success, userActivity: userActivity)
        completion(response)
    }
}
