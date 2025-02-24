//
//  CometChatThreadedMessageHeader + Properties.swift
//  CometChatUIKitSwift
//
//  Created by Dawinder on 10/02/25.
//

import Foundation
import CometChatSDK

extension CometChatThreadedMessageHeader {
    
    //MARK: Data
    @discardableResult
    public func set(parentMessage: BaseMessage) ->  Self {
        self.viewModel.parentMessage = parentMessage
        getDefaultTemplate(for: parentMessage)
        setupMessageBubbleView()
        return self
    }
    
    @discardableResult
    public func set(templates: [CometChatMessageTemplate]) -> Self {
        viewModel.templates?.removeAll()
        for template in (templates) {
            viewModel.templates?["\(template.category)_\(template.type)"] = template
        }
        return self
    }
    
    @discardableResult
    public func add(templates: [CometChatMessageTemplate]) -> Self {
        for template in (templates) {
            viewModel.templates?["\(template.category)_\(template.type)"] = template
        }
        return self
    }
    
    
    //MARK: Configuration
    @discardableResult
    public func set(maxHeight: CGFloat) -> Self {
        self.maxHeight = maxHeight
        return self
    }
    
    @discardableResult
    public func set(messageAlignment: MessageListAlignment) -> Self {
        self.messageAlignment = messageAlignment
        return self
    }
    
    @discardableResult
    public func set(datePattern: @escaping ((_ conversation: Conversation) -> String)) -> Self {
        self.datePattern = datePattern
        return self
    }
    
    @discardableResult
    public func set(textFormatters: [CometChatTextFormatter]) -> Self {
        self.textFormatters = textFormatters
        return self
    }
    
    
    
    @discardableResult
    public func set(count: Int) -> Self {
        
        self.count = count
        DispatchQueue.main.async { [weak self] in
            guard let this = self else { return }
            
            if count == 0 {
                this.threadCountLabel.text = "NO_REPLIES".localize()
            } else if count == 1 {
                this.threadCountLabel.text = this.singleNewMessageText
            } else {
                this.threadCountLabel.text = String(count) + " " +  "REPLIES_R".localize()
            }
        }
        
        return self
    }
    
    @discardableResult
    public func incrementCount() -> Self {
        let currentCount = self.getCount + 1
        self.set(count: currentCount )
        return self
    }
    
    @discardableResult
    public func reset() -> Self {
        self.count = 0
        return self
    }
    
    @discardableResult
    public func set(controller: UIViewController?) -> Self {
        self.controller = controller
        return self
    }
    
}
