.class public Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleWriteDescriptorRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;


# instance fields
.field private mBytes:[B

.field private mCharacterUUID:Ljava/util/UUID;

.field private mDescriptorUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 25
    invoke-direct {p0, p5}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 26
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mServiceUUID:Ljava/util/UUID;

    .line 27
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mCharacterUUID:Ljava/util/UUID;

    .line 28
    iput-object p3, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mDescriptorUUID:Ljava/util/UUID;

    .line 29
    iput-object p4, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mBytes:[B

    return-void
.end method

.method private startWrite()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mCharacterUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mDescriptorUUID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->mBytes:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->startWrite()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->startWrite()V

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
