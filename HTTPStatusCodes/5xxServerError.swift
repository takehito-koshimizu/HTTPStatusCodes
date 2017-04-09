//
//  ServerError.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

/// # 5xx Server error
///
/// The server failed to fulfill an apparently valid request.
///
/// [5xx Server error](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#5xx_Server_error)
///
public enum ServerError: Int {

    case internalServerError = 500
    case notImplemented = 501
    case badGateway = 502
    case serviceUnavailable = 503
    case gatewayTimeout = 504
    case httpVersionNotSupported = 505
    case variantAlsoNegotiates  = 506
    case insufficientStorage = 507
    case loopDetected = 508

    case notExtended = 510
    case networkAuthenticationRequired = 511
}
