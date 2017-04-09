//
//  ClientError.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

/// # 4xx Client errors
///
/// The 4xx class of status codes is intended for situations in which the client seems to have erred.
///
/// Except when responding to a HEAD request, the server should include an entity containing an explanation of the error situation,
/// and whether it is a temporary or permanent condition.
///
/// These status codes are applicable to any request method.
///
/// User agents should display any included entity to the user.
///
/// [4xx Client errors](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes#4xx_Client_errors)
///
public enum ClientError: Int {

    case badRequest = 400
    case unauthorized = 401
    case paymentRequired = 402
    case forbidden = 403
    case notFound = 404
    case methodNotAllowed = 405
    case notAcceptable  = 406
    case proxyAuthenticationRequired = 407
    case requestTimeout = 408
    case conflict = 409

    case gone = 410
    case lengthRequired = 411
    case preconditionFailed = 412
    case payloadTooLarge = 413
    case urlTooLong = 414
    case unsupportedMediaType = 415
    case rangeNotSatisfiable = 416
    case expectationFailed = 417
    case iAmATeapot = 418

    case misdirectedRequest = 421
    case unprocessableEntity = 422
    case locked = 423
    case failedDependency = 424
    case upgradeRequired = 426
    case preconditionRequired = 428
    case tooManyRequests = 429

    case requestHeaderFieldsTooLarge = 431

    case UnavailableForLegalReasons = 451
}
