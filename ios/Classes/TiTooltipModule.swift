//
//  TiTooltipModule.swift
//  titanium-tooltip
//
//  Created by Your Name
//  Copyright (c) 2019 Your Company. All rights reserved.
//

import UIKit
import TitaniumKit
import AMPopTip

@objc(TiTooltipModule)
class TiTooltipModule: TiModule {

  @objc let TOOLTIP_DIRECTION_UP = 0
  @objc let TOOLTIP_DIRECTION_DOWN = 1
  @objc let TOOLTIP_DIRECTION_LEFT = 2
  @objc let TOOLTIP_DIRECTION_RIGHT = 3

  func moduleGUID() -> String {
    return "8f724211-0b31-42ed-bf35-690517eed7f3"
  }
  
  override func moduleId() -> String! {
    return "ti.tooltip"
  }

  @objc(show:)
  func show(arguments: Array<Any>?) {
    guard let params = arguments?[0] as? [String: Any] else { return }
    guard let title = params["title"] as? String else { return }
    guard let containerProxy = params["container"] as? TiViewProxy else { return }
    guard let boundsProxy = params["sourceView"] as? TiViewProxy else { return }
    
    let bubbleColor = params["bubbleColor"];
    let textColor = params["textColor"];
    let direction = params["direction"] as? Int ?? 0
    let bounce = params["bounce"] as? Float ?? 0.0
    let shouldShowMask = params["shouldShowMask"] as? Bool ?? false

    let popTip = PopTip()

    popTip.padding = 10.0
    popTip.offset = 5.0
    popTip.arrowSize = CGSize(width: 18, height: 10)

    if shouldShowMask {
      popTip.maskColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
      popTip.shouldShowMask = true
    }

    if let textColor = textColor {
      popTip.textColor = TiUtils.colorValue(textColor)!.color
    }

    if let bubbleColor = bubbleColor {
      popTip.bubbleColor = TiUtils.colorValue(bubbleColor)!.color
    }

    if bounce > 0 {
      popTip.actionAnimation = .bounce(CGFloat(bounce))
    }
    
    DispatchQueue.main.async {
      popTip.show(text: title, direction: self._tooltipDirection(from: direction), maxWidth: 200, in: containerProxy.view!, from: TiUtils.viewPositionRect(boundsProxy.view))
    }
  }
  
  private func _tooltipDirection(from rawValue: Int) -> PopTipDirection {
    if rawValue == 0 {
      return .up
    } else if rawValue == 1  {
      return .down
    } else if rawValue == 2 {
      return  .left
    } else if rawValue == 3 {
      return .right
    }
    
    return .none
  }
}
