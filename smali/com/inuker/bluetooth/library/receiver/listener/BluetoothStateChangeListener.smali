.class public abstract Lcom/inuker/bluetooth/library/receiver/listener/BluetoothStateChangeListener;
.super Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;
.source "BluetoothStateChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothStateChangeListener"

    return-object v0
.end method

.method protected abstract onBluetoothStateChanged(II)V
.end method

.method public varargs onInvoke([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 16
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 17
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->getInstance(Landroid/content/Context;)Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->stopSearch()V

    .line 23
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothStateChangeListener;->onBluetoothStateChanged(II)V

    return-void
.end method
