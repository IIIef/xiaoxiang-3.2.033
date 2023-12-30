.class public abstract Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.super Ljava/lang/Object;
.source "BleRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;
.implements Lcom/inuker/bluetooth/library/connect/request/IBleRequest;
.implements Landroid/os/Handler$Callback;
.implements Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;
.implements Lcom/inuker/bluetooth/library/RuntimeChecker;


# static fields
.field protected static final MSG_REQUEST_TIMEOUT:I = 0x20


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

.field protected mExtra:Landroid/os/Bundle;

.field private mFinished:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mRequestTimeout:Z

.field protected mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

.field protected mResponseHandler:Landroid/os/Handler;

.field private mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

.field protected mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    .line 46
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "request canceled"

    .line 264
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    const/4 v0, -0x2

    .line 269
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V

    return-void
.end method

.method public checkRuntime()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/RuntimeChecker;->checkRuntime()V

    return-void
.end method

.method public clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    return-void
.end method

.method public closeGatt()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "close gatt"

    .line 187
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->closeGatt()V

    return-void
.end method

.method public discoverService()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->discoverService()Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;

    move-result-object v0

    return-object v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getStatusText()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getCurrentStatus()I

    move-result v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/Constants;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutInMillis()J
    .locals 2

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iput-boolean v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRequestTimeout:Z

    .line 196
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->closeGatt()V

    :goto_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s %s >>> %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectStatusChanged(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 279
    iget-boolean p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRequestTimeout:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x7

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    :cond_1
    return-void
.end method

.method protected onRequestCompleted(I)V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "request complete: code = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V

    .line 182
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

    invoke-interface {p1, p0}, Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;->onRequestCompleted(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public onResponse(I)V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mFinished:Z

    .line 75
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;-><init>(Lcom/inuker/bluetooth/library/connect/request/BleRequest;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openGatt()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->openGatt()Z

    move-result v0

    return v0
.end method

.method public final process(Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    .line 153
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getStatusText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "Process %s, status = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x4

    .line 158
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBluetoothEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x5

    .line 160
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->processRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 166
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    const/16 p1, -0xa

    .line 167
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public abstract processRequest()V
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public putIntExtra(Ljava/lang/String;I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public readRemoteRssi()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readRemoteRssi()Z

    move-result v0

    return v0
.end method

.method public refreshDeviceCache()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->refreshDeviceCache()Z

    move-result v0

    return v0
.end method

.method public registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result p1

    return p1
.end method

.method public setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result p1

    return p1
.end method

.method public setRuntimeChecker(Lcom/inuker/bluetooth/library/RuntimeChecker;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    return-void
.end method

.method public setWorker(Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    return-void
.end method

.method protected startRequestTiming()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getTimeoutInMillis()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected stopRequestTiming()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method

.method public writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method
