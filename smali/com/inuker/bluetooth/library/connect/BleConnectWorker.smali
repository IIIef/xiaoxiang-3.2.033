.class public Lcom/inuker/bluetooth/library/connect/BleConnectWorker;
.super Ljava/lang/Object;
.source "BleConnectWorker.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;
.implements Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Lcom/inuker/bluetooth/library/RuntimeChecker;


# static fields
.field private static final MSG_GATT_RESPONSE:I = 0x120


# instance fields
.field private mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

.field private volatile mConnectStatus:I

.field private mDeviceProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

.field private mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inuker/bluetooth/library/RuntimeChecker;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 75
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mWorkerHandler:Landroid/os/Handler;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    .line 78
    const-class p1, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-static {p0, p1, p0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ble adapter null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private broadcastCharacterChanged(Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 3

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.character_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 280
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.mac"

    .line 279
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra.service.uuid"

    .line 281
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "extra.character.uuid"

    .line 282
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "extra.byte.value"

    .line 283
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 284
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastConnectStatus(I)V
    .locals 3

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.connect_status_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra.status"

    .line 271
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isCharacteristicIndicatable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicNoRspWritable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicNotifyable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 705
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicReadable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicWritable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private refreshServiceProfile()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "refreshServiceProfile for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 89
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 91
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 95
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 96
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 103
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "character: uuid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    new-instance v0, Lcom/inuker/bluetooth/library/model/BleGattProfile;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/model/BleGattProfile;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    return-void
.end method

.method private setConnectStatus(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {p1}, Lcom/inuker/bluetooth/library/Constants;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setConnectStatus status = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 138
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mConnectStatus:I

    return-void
.end method


# virtual methods
.method public checkRuntime()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/RuntimeChecker;->checkRuntime()V

    return-void
.end method

.method public clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 373
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    :cond_0
    return-void
.end method

.method public closeGatt()V
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "closeGatt for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0, v2}, Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;->onConnectStatusChanged(Z)V

    .line 334
    :cond_1
    invoke-direct {p0, v2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    const/16 v0, 0x20

    .line 335
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastConnectStatus(I)V

    return-void
.end method

.method public discoverService()Z
    .locals 4

    .line 340
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "discoverService for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "discoverService but gatt is null!"

    .line 345
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "discoverServices failed"

    .line 350
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 360
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mConnectStatus:I

    return v0
.end method

.method public getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 715
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 216
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 217
    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 219
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onCharacteristicChanged for %s: value = %s, service = 0x%s, character = 0x%s"

    .line 215
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastCharacterChanged(Ljava/util/UUID;Ljava/util/UUID;[B)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 183
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 184
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 185
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 186
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 187
    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "onCharacteristicRead for %s: status = %d, service = 0x%s, character = 0x%s, value = %s"

    .line 181
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 200
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 202
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 204
    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "onCharacteristicWrite for %s: status = %d, service = 0x%s, character = 0x%s, value = %s"

    .line 198
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;

    if-eqz v1, :cond_0

    .line 207
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 146
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "onConnectionStateChange for %s: status = %d, newState = %d"

    .line 145
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-ne p2, v3, :cond_0

    .line 149
    invoke-direct {p0, v3}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    .line 151
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz p1, :cond_1

    .line 152
    invoke-interface {p1, v2}, Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;->onConnectStatusChanged(Z)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->closeGatt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 229
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 231
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "onDescriptorRead for %s: status = %d, service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 228
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;->onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 245
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 247
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 248
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 249
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "onDescriptorWrite for %s: status = %d, service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 244
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/16 p1, 0x120

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 726
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onReadRemoteRssi(II)V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 261
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onReadRemoteRssi for %s, rssi = %d, status = %d"

    .line 260
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;

    if-eqz v1, :cond_0

    .line 264
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;->onReadRemoteRssi(II)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(I)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 164
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onServicesDiscovered for %s: status = %d"

    .line 163
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 v0, 0x13

    .line 167
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    const/16 v0, 0x10

    .line 168
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastConnectStatus(I)V

    .line 169
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->refreshServiceProfile()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;

    if-eqz v1, :cond_1

    .line 173
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    invoke-interface {v0, p1, v1}, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;->onServicesDiscovered(ILcom/inuker/bluetooth/library/model/BleGattProfile;)V

    :cond_1
    return-void
.end method

.method public openGatt()Z
    .locals 6

    .line 289
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openGatt for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Previous gatt not closed"

    .line 294
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v0

    .line 298
    :cond_0
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    new-instance v2, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;

    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-direct {v2, v4}, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;-><init>(Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;)V

    .line 301
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/Version;->isMarshmallow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 304
    :cond_1
    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v1, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "openGatt failed: connectGatt return null!"

    .line 308
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_2
    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 400
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const-string v3, "readCharacteristic for %s: service = 0x%s, character = 0x%s"

    .line 399
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 407
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 416
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 417
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 421
    :cond_1
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "readCharacteristic failed"

    .line 422
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 465
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 466
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const-string v3, "readDescriptor for %s: service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 465
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 473
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 477
    :cond_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "descriptor not exist"

    .line 479
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 483
    :cond_1
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 484
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 488
    :cond_2
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "readDescriptor failed"

    .line 489
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public readRemoteRssi()Z
    .locals 4

    .line 670
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 672
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "readRemoteRssi for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ble gatt null"

    .line 675
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 679
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "readRemoteRssi failed"

    .line 680
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public refreshDeviceCache()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 380
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "refreshDeviceCache for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 384
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ble gatt null"

    .line 385
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 389
    :cond_0
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->refreshGattCache(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "refreshDeviceCache failed"

    .line 390
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 366
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    return-void
.end method

.method public setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 5

    .line 619
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 622
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "setCharacteristicIndication for %s, service = %s, character = %s, enable = %b"

    .line 621
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 627
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 636
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 637
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 641
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "setCharacteristicIndication failed"

    .line 642
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 646
    :cond_2
    sget-object p2, Lcom/inuker/bluetooth/library/Constants;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "getDescriptor for indicate null!"

    .line 649
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eqz p3, :cond_4

    .line 653
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_0

    :cond_4
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 655
    :goto_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "setValue for indicate descriptor failed!"

    .line 656
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 660
    :cond_5
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "writeDescriptor for indicate failed"

    .line 661
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method

.method public setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 5

    .line 568
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 571
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "setCharacteristicNotification for %s, service = %s, character = %s, enable = %b"

    .line 570
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 576
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 585
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 586
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 590
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "setCharacteristicNotification failed"

    .line 591
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 595
    :cond_2
    sget-object p2, Lcom/inuker/bluetooth/library/Constants;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "getDescriptor for notify null!"

    .line 598
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eqz p3, :cond_4

    .line 602
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_0

    :cond_4
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 604
    :goto_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "setValue for notify descriptor failed!"

    .line 605
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 609
    :cond_5
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "writeDescriptor for notify failed"

    .line 610
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 432
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "writeCharacteristic for %s: service = 0x%s, character = 0x%s, value = 0x%s"

    .line 431
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 439
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 448
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 449
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 453
    :cond_2
    sget-object p3, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 455
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "writeCharacteristic failed"

    .line 456
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 533
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 534
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "writeCharacteristicWithNoRsp for %s: service = 0x%s, character = 0x%s, value = 0x%s"

    .line 533
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 541
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 550
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 551
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 555
    :cond_2
    sget-object p3, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 556
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 558
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "writeCharacteristic failed"

    .line 559
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 499
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-string v3, "writeDescriptor for %s: service = 0x%s, character = 0x%s, descriptor = 0x%s, value = 0x%s"

    .line 498
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "characteristic not exist!"

    .line 506
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 510
    :cond_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "descriptor not exist"

    .line 512
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 516
    :cond_1
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "ble gatt null"

    .line 517
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    .line 521
    :cond_3
    sget-object p4, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 523
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "writeDescriptor failed"

    .line 524
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_4
    return v1
.end method
