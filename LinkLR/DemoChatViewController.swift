//
//  DemoChatViewController.swift
//  LinkLR
//
//  Created by Yasin Cengiz on 2.01.2020.
//  Copyright © 2020 MrYC. All rights reserved.
//

import UIKit
import StreamChat
import StreamChatCore

class DemoChatViewController: ChatViewController {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Setup the general channel for the chat
        let channel = Channel(type: .messaging, id: "general", name: "General")
        channelPresenter = ChannelPresenter(channel: channel)
        
    }
    
    override func messageCell(at indexPath: IndexPath, message: Message, readUsers: [User]) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "message")
            ?? UITableViewCell(style: .value2, reuseIdentifier: "message")
        
        cell.textLabel?.text = message.user.name
        cell.textLabel?.font = .systemFont(ofSize:12, weight: .bold)
        cell.detailTextLabel?.text = message.deleted == nil ? message.text : "This message was deleted"
        cell.detailTextLabel?.font = message.deleted == nil ? .systemFont(ofSize: 12) : .systemFont(ofSize:12, weight: .light)
        cell.detailTextLabel?.numberOfLines = 0
        
        return cell
        
    }
    
    
}
