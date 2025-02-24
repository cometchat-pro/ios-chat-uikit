//
//  CometChatGroups + Properties.swift
//  CometChatUIKitSwift
//
//  Created by Suryansh on 19/06/24.
//

import Foundation
import CometChatSDK

extension CometChatGroups {
    
    //MARK: Data Props
    @discardableResult
    public func set(groupsRequestBuilder: GroupsRequest.GroupsRequestBuilder) -> Self {
        viewModel = GroupsViewModel(groupsRequestBuilder: groupsRequestBuilder)
        return self
    }
    
    @discardableResult
    public func set(searchRequestBuilder: GroupsRequest.GroupsRequestBuilder) -> Self {
        viewModel.set(searchRequestBuilder: searchRequestBuilder)
        return self
    }
    
    public func set(searchKeyword: String) -> Self {
        viewModel.filterGroups(text: searchKeyword)
        return self
    }

    //MARK: Events
    @discardableResult
    public func onSelection(_ onSelection: @escaping (([Group]?) -> ())) -> Self {
        self.onSelection = onSelection
        return self
    }
    
    @discardableResult
    public func set(onLoad: @escaping (([Group]) -> Void)) -> Self {
        self.onLoad = onLoad
        return self
    }
    
    @discardableResult
    public func set(onError: @escaping ((_ error: CometChatException) -> Void)) -> Self {
        self.onError = onError
        return self
    }
    
    @discardableResult
    public func set(onEmpty: @escaping (() -> Void)) -> Self {
        self.onEmpty = onEmpty
        return self
    }
    
    @discardableResult
    public func set(onItemClick: @escaping ((_ group: Group, _ indexPath: IndexPath) -> Void)) -> Self {
        self.onItemClick = onItemClick
        return self
    }
    
    @discardableResult
    public func set(onItemLongClick: @escaping ((_ group: Group, _ indexPath: IndexPath) -> Void)) -> Self {
        self.onItemLongClick = onItemLongClick
        return self
    }

    //MARK: Configuration
    @discardableResult
    public func set(options: ((_ group: Group?) -> [CometChatGroupOption])?) -> Self {
        self.options = options
        return self
    }
    
    @discardableResult
    public func add(options: ((_ group: Group?) -> [CometChatGroupOption])?) -> Self {
        self.addOptions = options
        return self
    }

    //MARK: Overrides
    @discardableResult
    public func set(subtitle: ((_ group: Group?) -> UIView)?) -> Self {
        self.subtitle = subtitle
        return self
    }
    
    @discardableResult
    public func set(listItemView: ((_ group: Group?) -> UIView)?) -> Self {
        self.listItemView = listItemView
        return self
    }
    
    @discardableResult
    public func set(titleView: ((_ group: Group?) -> UIView)?) -> Self {
        self.titleView = titleView
        return self
    }
    
    @discardableResult
    public func set(leadingView: ((_ group: Group?) -> UIView)?) -> Self {
        self.leadingView = leadingView
        return self
    }
    
    @discardableResult
    public func set(trailingView: ((_ group: Group?) -> UIView)?) -> Self {
        self.trailingView = trailingView
        return self
    }
    
    
    @discardableResult
    func add(group: Group) -> Self {
        viewModel.add(group: group)
        return self
    }
    
    @discardableResult
    func insert(group: Group, at: Int) -> Self {
        viewModel.insert(group: group, at: at)
        return self
    }
    
    @discardableResult
    func update(group: Group) -> Self {
        viewModel.update(group: group)
        return self
    }
    
    @discardableResult
    func remove(group: Group) -> Self {
        viewModel.remove(group: group)
        return self
    }
    
    @discardableResult
    private func clearList() -> Self {
        viewModel.clearList()
        return self
    }
    
    private func size() -> Int {
        return viewModel.size()
    }
    
    @discardableResult
    public func set(title:String) -> Self {
        self.title = title
        return self
    }
    
    @discardableResult
    public func set(selectionLimit : Int) -> Self {
        self.selectionLimit = selectionLimit
        return self
    }
}
