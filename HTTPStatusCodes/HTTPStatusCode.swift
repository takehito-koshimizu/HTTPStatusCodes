//
//  HTTPStatusCode.swift
//  HTTPStatusCodes
//
//  Created by Takehito Koshimizu on 2017/04/09.
//  Copyright © 2017年 Takehito Koshimizu. All rights reserved.
//

import Foundation

/// Hypertext Transfer Protocol (HTTP) response status codes.
public enum HTTPStatusCode {

    /// 1xx Informational responses
    case informational(Informational)
    /// 2xx Success
    case success(Success)
    /// 3xx Redirection
    case redirection(Redirection)
    /// 4xx Client errors
    case clientError(ClientError)
    /// 5xx Server error
    case serverError(ServerError)

    case undefined(code: Int)
}

extension HTTPStatusCode: ExpressibleByIntegerLiteral {

    public typealias IntegerLiteralType = Int

    public init(integerLiteral value: Int) {
        self = Informational(rawValue: value).map(HTTPStatusCode.informational)
            ?? Success(rawValue: value).map(HTTPStatusCode.success)
            ?? Redirection(rawValue: value).map(HTTPStatusCode.redirection)
            ?? ClientError(rawValue: value).map(HTTPStatusCode.clientError)
            ?? ServerError(rawValue: value).map(HTTPStatusCode.serverError)
            ?? HTTPStatusCode.undefined(code: value)
    }

    public var code: Int {
        switch self {
        case .informational(let code):
            return code.rawValue
        case .success(let code):
            return code.rawValue
        case .redirection(let code):
            return code.rawValue
        case .clientError(let code):
            return code.rawValue
        case .serverError(let code):
            return code.rawValue
        case .undefined(let code):
            return code
        }
    }
}

public extension HTTPStatusCode {

    /// 1xx Informational responses
    public var informational: Informational? {
        switch self {
        case .informational(let code):
            return code
        default:
            return Informational?.none
        }
    }

    /// 2xx Success
    public var success: Success? {
        switch self {
        case .success(let code):
            return code
        default:
            return Success?.none
        }
    }

    /// 3xx Redirection
    public var redirection: Redirection? {
        switch self {
        case .redirection(let code):
            return code
        default:
            return Redirection?.none
        }
    }

    /// 4xx Client errors
    public var clientError :ClientError? {
        switch self {
        case .clientError(let code):
            return code
        default:
            return ClientError?.none
        }
    }

    /// 5xx Server error
    public var serverError: ServerError? {
        switch self {
        case .serverError(let code):
            return code
        default:
            return ServerError?.none
        }
    }
}

public extension HTTPStatusCode {

    /// is 1xx Informational responses
    public var isInformational: Bool {
        return informational != Informational?.none
    }

    /// is 2xx Success
    public var isSuccess: Bool {
        return success != Success?.none
    }

    /// is 3xx Redirection
    public var isRedirection: Bool {
        return redirection != Redirection?.none
    }

    /// is 4xx Client errors
    public var isClientError :Bool {
        return clientError != ClientError?.none
    }

    /// is 5xx Server error
    public var isServerError: Bool {
        return serverError != ServerError?.none
    }
}
