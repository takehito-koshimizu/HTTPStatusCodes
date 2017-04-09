//
//  Redirection.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

/// # 3xx Redirection
///
/// This class of status code indicates the client must take additional action to complete the request. Many of these status codes are used in URL redirection.
///
/// [3xx Redirection](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#3xx_Redirection)
///
public enum Redirection: Int {
    case multipleChoices = 300
    case movedPermanently = 301
    case found = 302
    case seeOther = 303
    case notModified = 304
    case useProxy = 305
    case switchProxy  = 306
    case temporaryRedirect = 307
    case permanentRedirect = 308
}
