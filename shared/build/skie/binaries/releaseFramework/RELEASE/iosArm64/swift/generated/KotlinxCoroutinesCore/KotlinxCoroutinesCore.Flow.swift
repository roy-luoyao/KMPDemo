// Generated by Touchlab SKIE 0.8.2

import Foundation

extension shared.Kotlinx_coroutines_coreFlow {

    @available(iOS 13, macOS 10.15, watchOS 6, tvOS 13, *)
    public func collect(collector: shared.Kotlinx_coroutines_coreFlowCollector) async throws -> Swift.Void {
        return try await SwiftCoroutineDispatcher.dispatch {
            shared.__SkieSuspendWrappersKt.Skie_Suspend__1__collect(dispatchReceiver: self, collector: collector, suspendHandler: $0)
        }
    }

}