.class public Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleReadRssiRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method private startReadRssi()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->readRemoteRssi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReadRemoteRssi(II)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const-string p2, "extra.rssi"

    .line 53
    invoke-virtual {p0, p2, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->putIntExtra(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 35
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->startReadRssi()V

    goto :goto_0

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->startReadRssi()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
