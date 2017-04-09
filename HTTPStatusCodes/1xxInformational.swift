//
//  Informational.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

/// # 1xx Informational responses
///
/// An informational response indicates that the request was received and understood.
///
/// It is issued on a provisional basis while request processing continues.
///
/// It alerts the client to wait for a final response.
///
/// The message consists only of the status line and optional header fields,
/// and is terminated by an empty line.
///
/// As the HTTP/1.0 standard did not define any 1xx status codes,
/// servers must not send a 1xx response to an HTTP/1.0 compliant client except under experimental conditions.
///
/// [1xx Informational responses](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#1xx_Informational_responses)
///
public enum Informational: Int {
    case `continue` = 100
    case switchingProtocols = 101
    case processing = 102
}
