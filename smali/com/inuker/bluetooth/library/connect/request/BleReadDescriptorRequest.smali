.class public Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleReadDescriptorRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;


# instance fields
.field private mCharacterUUID:Ljava/util/UUID;

.field private mDescriptorUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 24
    invoke-direct {p0, p4}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 25
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mServiceUUID:Ljava/util/UUID;

    .line 26
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mCharacterUUID:Ljava/util/UUID;

    .line 27
    iput-object p3, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mDescriptorUUID:Ljava/util/UUID;

    return-void
.end method

.method private startRead()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mCharacterUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->mDescriptorUUID:Ljava/util/UUID;

    invoke-virtual {p0, v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const-string p1, "extra.byte.value"

    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->putByteArray(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 67
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->startRead()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->startRead()V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
