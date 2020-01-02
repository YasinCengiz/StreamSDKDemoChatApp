//
//  ViewController.swift
//  LinkLR
//
//  Created by Yasin Cengiz on 2.01.2020.
//  Copyright © 2020 MrYC. All rights reserved.
//

import UIKit
import StreamChat
import StreamChatCore

class ViewController: ChannelsViewController {

    override func channelCell(at indexPath: IndexPath, channelPresenter: ChannelPresenter) -> UITableViewCell {
        let cell = super.channelCell(at: indexPath, channelPresenter: channelPresenter)
        
        guard let channelCell = cell as? ChannelTableViewCell else {
            return cell
        }
        if channelPresenter.channel.currentUnreadCount > 0 {
            channelCell.update(info: "\(channelPresenter.channel.currentUnreadCount) unread", isUnread: true)
    }
    
        
        return channelCell
    }

}

