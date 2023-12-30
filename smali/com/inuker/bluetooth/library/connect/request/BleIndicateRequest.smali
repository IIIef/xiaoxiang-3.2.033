.class public Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleIndicateRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;


# instance fields
.field private mCharacterUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 23
    invoke-direct {p0, p3}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 24
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->mServiceUUID:Ljava/util/UUID;

    .line 25
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->mCharacterUUID:Ljava/util/UUID;

    return-void
.end method

.method private openIndicate()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->mCharacterUUID:Ljava/util/UUID;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 44
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->openIndicate()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->openIndicate()V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
