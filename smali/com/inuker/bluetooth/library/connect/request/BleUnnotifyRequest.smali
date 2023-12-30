.class public Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleUnnotifyRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;


# instance fields
.field private mCharacterUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 22
    invoke-direct {p0, p3}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 23
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->mServiceUUID:Ljava/util/UUID;

    .line 24
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->mCharacterUUID:Ljava/util/UUID;

    return-void
.end method

.method private closeNotify()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->mCharacterUUID:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->closeNotify()V

    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->closeNotify()V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
