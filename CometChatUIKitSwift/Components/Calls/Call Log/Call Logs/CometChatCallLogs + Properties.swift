//
//  CometChatCallLogs + Properties.swift
//  CometChatUIKitSwift
//
//  Created by Dawinder on 09/02/25.
//

import Foundation
import CometChatSDK

#if canImport(CometChatCallsSDK)
import CometChatCallsSDK

extension CometChatCallLogs {
    
    //MARK: Data
    @discardableResult
    public func set(callRequestBuilder: Any?) -> Self {
        if let callRequestBuilder = callRequestBuilder as? CometChatCallsSDK.CallLogsRequest.CallLogsBuilder {
            self.callRequestBuilder = callRequestBuilder
        }
        return self
    }
    
    @discardableResult
    public func set(callRequestBuilder: Any) -> Self {
        if let callRequestBuilder = (callRequestBuilder as? CometChatCallsSDK.CallLogsRequest.CallLogsBuilder) {
            self.viewModel.callLogRequestBuilder = callRequestBuilder
        }
        return self
    }
    
    @discardableResult
    public func set(outgoingCallConfiguration: OutgoingCallConfiguration) -> Self {
        self.outgoingCallConfiguration = outgoingCallConfiguration
        return self
    }
    
    
    //MARK: Events
    @discardableResult
    public func set(onError: ((_ error : Any) -> ())?) -> Self {
        self.onError = onError
        return self
    }
    
    @discardableResult
    public func set(onLoad: @escaping (([CometChatCallsSDK.CallLog]) -> Void)) -> Self {
        self.onLoad = onLoad
        return self
    }
    
    @discardableResult
    public func set(onEmpty: @escaping (() -> Void)) -> Self {
        self.onEmpty = onEmpty
        return self
    }
    
    @discardableResult
    public func set(onItemClick: ((_ callLog : CometChatCallsSDK.CallLog) -> ())?) -> Self {
        self.onItemClick = onItemClick
        return self
    }
    
    @discardableResult
    public func set(onItemLongClick: ((_ callLog : CometChatCallsSDK.CallLog, _ indexPath: IndexPath) -> ())?) -> Self {
        self.onItemLongClick = onItemLongClick
        return self
    }
    
    
    //MARK: Configurations
    @discardableResult
    public func set(datePattern: @escaping ((_ callLog: CometChatCallsSDK.CallLog) -> String)) -> Self {
        self.datePattern = datePattern
        return self
    }
    
    @discardableResult
    public func set(options: ((_ callLog: CometChatCallsSDK.CallLog) -> [CometChatCallOption])?) -> Self {
      self.options = options
      return self
    }
    
    @discardableResult
    public func add(options: ((_ callLog: CometChatCallsSDK.CallLog) -> [CometChatCallOption])?) -> Self {
      self.addOptions = options
      return self
    }
    
    
    //MARK: UI updates
    @discardableResult
    public func set(subtitleView: ((_ callLog : CometChatCallsSDK.CallLog) -> UIView)?) -> Self {
        self.subtitleView = subtitleView
        return self
    }
    
    @discardableResult
    public func set(trailView: ((_ callLog : CometChatCallsSDK.CallLog) -> UIView)?) -> Self {
        self.trailView = trailView
        return self
    }
    
    @discardableResult
    public func set(titleView: ((_ callLog : CometChatCallsSDK.CallLog) -> UIView)?) -> Self {
        self.titleView = titleView
        return self
    }
    
    @discardableResult
    public func set(listItemView: ((_ callLog : CometChatCallsSDK.CallLog) -> UIView)?) -> Self {
        self.listItemView = listItemView
        return self
    }
    
    @discardableResult
    public func set(onCallButtonClicked: ((CometChatCallsSDK.CallLog) -> Void)?) -> Self {
        self.onCallButtonClicked = onCallButtonClicked
        return self
    }
    
    @discardableResult
    public func set(leadingView: ((_ callLog : CometChatCallsSDK.CallLog) -> UIView)?) -> Self {
        self.leadingView = leadingView
        return self
    }
    
    
}
#endif
