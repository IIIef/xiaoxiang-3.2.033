.class public abstract Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.super Lcom/inuker/bluetooth/library/IResponse$Stub;
.source "BluetoothResponse.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_RESPONSE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/IResponse$Stub;-><init>()V

    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;->mHandler:Landroid/os/Handler;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;->onAsyncResponse(ILandroid/os/Bundle;)V

    :goto_0
    return v1
.end method

.method protected abstract onAsyncResponse(ILandroid/os/Bundle;)V
.end method

.method public onResponse(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
