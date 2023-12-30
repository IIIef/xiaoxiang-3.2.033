.class public Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleReadRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;


# instance fields
.field private mCharacterUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 20
    invoke-direct {p0, p3}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 21
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->mServiceUUID:Ljava/util/UUID;

    .line 22
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->mCharacterUUID:Ljava/util/UUID;

    return-void
.end method

.method private startRead()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->mCharacterUUID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const-string p1, "extra.byte.value"

    .line 59
    invoke-virtual {p0, p1, p3}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->putByteArray(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->startRead()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->startRead()V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
