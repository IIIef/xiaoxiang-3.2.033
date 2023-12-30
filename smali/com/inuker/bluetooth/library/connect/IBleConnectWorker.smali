.class public interface abstract Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;
.super Ljava/lang/Object;
.source "IBleConnectWorker.java"


# virtual methods
.method public abstract clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
.end method

.method public abstract closeGatt()V
.end method

.method public abstract discoverService()Z
.end method

.method public abstract getCurrentStatus()I
.end method

.method public abstract getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;
.end method

.method public abstract openGatt()Z
.end method

.method public abstract readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
.end method

.method public abstract readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
.end method

.method public abstract readRemoteRssi()Z
.end method

.method public abstract refreshDeviceCache()Z
.end method

.method public abstract registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
.end method

.method public abstract setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z
.end method

.method public abstract setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z
.end method

.method public abstract writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
.end method

.method public abstract writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z
.end method

.method public abstract writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
.end method
