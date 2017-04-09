//
//  Success.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

/// # 2xx Success
///
/// This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully.
///
/// [2xx Success](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#2xx_Success)
///
public enum Success: Int {
    case ok = 200
    case created = 201
    case accepted = 202
    case nonAuthoritativeInformation = 203
    case noContent = 204
    case resetContent = 205
    case partialContent  = 206
    case multiStatus = 207
    case alreadyReported = 208
    case imUsed = 226
}
