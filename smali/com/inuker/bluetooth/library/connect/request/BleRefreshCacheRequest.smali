.class public Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleRefreshCacheRequest.java"


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method


# virtual methods
.method public processRequest()V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;->refreshDeviceCache()Z

    .line 20
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest$1;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest$1;-><init>(Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
