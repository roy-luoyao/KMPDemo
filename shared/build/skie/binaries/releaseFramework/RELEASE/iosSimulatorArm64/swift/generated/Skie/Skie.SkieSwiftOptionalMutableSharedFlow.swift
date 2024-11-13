// Generated by Touchlab SKIE 0.8.2

import Foundation

public final class SkieSwiftOptionalMutableSharedFlow<T> : shared.SkieSwiftFlowProtocol,
        shared.SkieSwiftFlowInternalProtocol, Swift._ObjectiveCBridgeable {

    let delegate: shared.Kotlinx_coroutines_coreMutableSharedFlow

    public var subscriptionCount: shared.SkieSwiftStateFlow<shared.KotlinInt> {
        bridgeSubscriptionCount(delegate.subscriptionCount)
    }

    public var replayCache: [T?] {
        delegate.replayCache as! [T?]
    }

    init(`internal` flow: shared.Kotlinx_coroutines_coreMutableSharedFlow) {
        delegate = flow
    }

    @available(iOS 13, macOS 10.15, watchOS 6, tvOS 13, *)
    public func emit(value: T?) async throws -> Swift.Void {
        try await delegate.emit(value: value)
    }

    public func tryEmit(value: T?) -> Swift.Bool {
        delegate.tryEmit(value: value)
    }

    public func resetReplayCache() -> Swift.Void {
        delegate.resetReplayCache()
    }

    public static func _forceBridgeFromObjectiveC(_ source: shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>, result: inout shared.SkieSwiftOptionalMutableSharedFlow<T>?) -> Swift.Void {
        result = fromObjectiveC(source)
    }

    public static func _conditionallyBridgeFromObjectiveC(_ source: shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>, result: inout shared.SkieSwiftOptionalMutableSharedFlow<T>?) -> Swift.Bool {
        result = fromObjectiveC(source)
        return true
    }

    public static func _unconditionallyBridgeFromObjectiveC(_ source: shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>?) -> Self {
        return fromObjectiveC(source)
    }

    public func _bridgeToObjectiveC() -> shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject> {
        return shared.SkieKotlinOptionalMutableSharedFlow(delegate)
    }

    private static func fromObjectiveC(_ source: shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>?) -> Self {
        guard let source = source else {
            fatalError("Couldn't map value of \(Swift.String(describing: source)) to shared.SkieSwiftOptionalMutableSharedFlow")
        }
        return .init(internal: source)
    }

    public func makeAsyncIterator() -> shared.SkieSwiftFlowIterator<T?> {
        return SkieSwiftFlowIterator(flow: delegate)
    }

    public typealias AsyncIterator = shared.SkieSwiftFlowIterator<T?>

    public typealias Element = T?

    public typealias _ObjectiveCType = shared.SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>

}