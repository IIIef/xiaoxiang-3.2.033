.class public interface abstract Lcom/inuker/bluetooth/library/IBluetoothClient;
.super Ljava/lang/Object;
.source "IBluetoothClient.java"


# virtual methods
.method public abstract clearRequest(Ljava/lang/String;I)V
.end method

.method public abstract connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
.end method

.method public abstract notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
.end method

.method public abstract read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
.end method

.method public abstract readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
.end method

.method public abstract readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V
.end method

.method public abstract refreshCache(Ljava/lang/String;)V
.end method

.method public abstract registerBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
.end method

.method public abstract registerBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
.end method

.method public abstract registerConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
.end method

.method public abstract search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
.end method

.method public abstract stopSearch()V
.end method

.method public abstract unindicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
.end method

.method public abstract unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
.end method

.method public abstract unregisterBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
.end method

.method public abstract unregisterBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
.end method

.method public abstract unregisterConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
.end method

.method public abstract write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
.end method

.method public abstract writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
.end method

.method public abstract writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
.end method
