.class public interface abstract Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;
.super Ljava/lang/Object;
.source "IBleConnectMaster.java"


# virtual methods
.method public abstract clearRequest(I)V
.end method

.method public abstract connect(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract indicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract read(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract readRssi(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract unnotify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract write(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method

.method public abstract writeNoRsp(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end method
