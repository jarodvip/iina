//
//  MiniPlayerWindowMenuActions.swift
//  iina
//
//  Created by lhc on 13/8/2017.
//  Copyright © 2017 lhc. All rights reserved.
//

import Foundation

extension MiniPlayerWindowController {

  @objc func menuAlwaysOnTop(_ sender: AnyObject) {
    isOntop = !isOntop
    setWindowFloatingOnTop(isOntop)
  }

  @available(macOS 10.12, *)
  @objc func menuTogglePIP(_ sender: NSMenuItem) {
    guard player.switchedToMiniPlayerByPIP else { return }
    player.mainWindow.exitPIP()
  }

  @objc func menuSwitchToMiniPlayer(_ sender: NSMenuItem) {
    player.switchBackFromMiniPlayer(automatically: false)
  }

}
