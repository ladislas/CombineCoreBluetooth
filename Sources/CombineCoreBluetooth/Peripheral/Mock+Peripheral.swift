import Foundation

extension Peripheral {
  public static func unimplemented(
    name: String? = nil,
    identifier: UUID = .init(),
    state:                       @escaping @Sendable () -> CBPeripheralState = _Internal._unimplemented("state"),
    services:                    @escaping @Sendable () -> [CBService]? = _Internal._unimplemented("services"),
    canSendWriteWithoutResponse: @escaping @Sendable () -> Bool = _Internal._unimplemented("canSendWriteWithoutResponse"),
    ancsAuthorized:              @escaping @Sendable () -> Bool = _Internal._unimplemented("ancsAuthorized"),
    readRSSI:                    @escaping @Sendable () -> Void = _Internal._unimplemented("readRSSI"),
    discoverServices:            @escaping @Sendable ([CBUUID]?) -> Void = _Internal._unimplemented("discoverServices") ,
    discoverIncludedServices:    @escaping @Sendable ([CBUUID]?, CBService) -> Void = _Internal._unimplemented("discoverIncludedServices"),
    discoverCharacteristics:     @escaping @Sendable ([CBUUID]?, CBService) -> Void = _Internal._unimplemented("discoverCharacteristics"),
    readValueForCharacteristic:  @escaping @Sendable (CBCharacteristic) -> Void = _Internal._unimplemented("readValueForCharacteristic"),
    maximumWriteValueLength:     @escaping @Sendable (CBCharacteristicWriteType) -> Int = _Internal._unimplemented("maximumWriteValueLength"),
    writeValueForCharacteristic: @escaping @Sendable (Data, CBCharacteristic, CBCharacteristicWriteType) -> Void = _Internal._unimplemented("writeValueForCharacteristic"),
    setNotifyValue:              @escaping @Sendable (Bool, CBCharacteristic) -> Void = _Internal._unimplemented("setNotifyValue"),
    discoverDescriptors:         @escaping @Sendable (CBCharacteristic) -> Void = _Internal._unimplemented("discoverDescriptors"),
    readValueForDescriptor:      @escaping @Sendable (CBDescriptor) -> Void = _Internal._unimplemented("readValueForDescriptor"),
    writeValueForDescriptor:     @escaping @Sendable (Data, CBDescriptor) -> Void = _Internal._unimplemented("writeValueForDescriptor"),
    openL2CAPChannel:            @escaping @Sendable (CBL2CAPPSM) -> Void = _Internal._unimplemented("openL2CAPChannel"),
    didReadRSSI:                             AnyPublisher<Result<Double, Error>, Never> = _Internal._unimplemented("didReadRSSI"),
    didDiscoverServices:                     AnyPublisher<([CBService], Error?), Never> = _Internal._unimplemented("didDiscoverServices"),
    didDiscoverIncludedServices:             AnyPublisher<(CBService, Error?), Never> = _Internal._unimplemented("didDiscoverIncludedServices"),
    didDiscoverCharacteristics:              AnyPublisher<(CBService, Error?), Never> = _Internal._unimplemented("didDiscoverCharacteristics"),
    didUpdateValueForCharacteristic:         AnyPublisher<(CBCharacteristic, Error?), Never> = _Internal._unimplemented("didUpdateValueForCharacteristic"),
    didWriteValueForCharacteristic:          AnyPublisher<(CBCharacteristic, Error?), Never> = _Internal._unimplemented("didWriteValueForCharacteristic"),
    didUpdateNotificationState:              AnyPublisher<(CBCharacteristic, Error?), Never> = _Internal._unimplemented("didUpdateNotificationState"),
    didDiscoverDescriptorsForCharacteristic: AnyPublisher<(CBCharacteristic, Error?), Never> = _Internal._unimplemented("didDiscoverDescriptorsForCharacteristic"),
    didUpdateValueForDescriptor:             AnyPublisher<(CBDescriptor, Error?), Never> = _Internal._unimplemented("didUpdateValueForDescriptor"),
    didWriteValueForDescriptor:              AnyPublisher<(CBDescriptor, Error?), Never> = _Internal._unimplemented("didWriteValueForDescriptor"),
    didOpenChannel:                          AnyPublisher<(L2CAPChannel?, Error?), Never> = _Internal._unimplemented("didOpenChannel"),
    didUpdateMTU:                            AnyPublisher<Int, Never> = _Internal._unimplemented("didUpdateMTU"),
    isReadyToSendWriteWithoutResponse:       AnyPublisher<Void, Never> = _Internal._unimplemented("isReadyToSendWriteWithoutResponse"),
    nameUpdates:                             AnyPublisher<String?, Never> = _Internal._unimplemented("nameUpdates"),
    invalidatedServiceUpdates:               AnyPublisher<[CBService], Never> = _Internal._unimplemented("invalidatedServiceUpdates")
  ) -> Peripheral {
    Peripheral(
      rawValue: nil,
      delegate: nil,
      _name: { name },
      _identifier: { identifier },
      _state: state,
      _services: services,
      _canSendWriteWithoutResponse: canSendWriteWithoutResponse,
      _ancsAuthorized: ancsAuthorized,
      _readRSSI: readRSSI,
      _discoverServices: discoverServices,
      _discoverIncludedServices: discoverIncludedServices,
      _discoverCharacteristics: discoverCharacteristics,
      _readValueForCharacteristic: readValueForCharacteristic,
      _maximumWriteValueLength: maximumWriteValueLength,
      _writeValueForCharacteristic: writeValueForCharacteristic,
      _setNotifyValue: setNotifyValue,
      _discoverDescriptors: discoverDescriptors,
      _readValueForDescriptor: readValueForDescriptor,
      _writeValueForDescriptor: writeValueForDescriptor,
      _openL2CAPChannel: openL2CAPChannel,

      didReadRSSI: didReadRSSI,
      didDiscoverServices: didDiscoverServices,
      didDiscoverIncludedServices: didDiscoverIncludedServices,
      didDiscoverCharacteristics: didDiscoverCharacteristics,
      didUpdateValueForCharacteristic: didUpdateValueForCharacteristic,
      didWriteValueForCharacteristic: didWriteValueForCharacteristic,
      didUpdateNotificationState: didUpdateNotificationState,
      didDiscoverDescriptorsForCharacteristic: didDiscoverDescriptorsForCharacteristic,
      didUpdateValueForDescriptor: didUpdateValueForDescriptor,
      didWriteValueForDescriptor: didWriteValueForDescriptor,
      didOpenChannel: didOpenChannel,
      didUpdateMTU: didUpdateMTU,

      isReadyToSendWriteWithoutResponse: isReadyToSendWriteWithoutResponse,
      nameUpdates: nameUpdates,
      invalidatedServiceUpdates: invalidatedServiceUpdates
    )
  }
}
