.class public abstract Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;
.super Lcom/inuker/bluetooth/library/receiver/listener/BluetoothClientListener;
.source "BluetoothStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBluetoothStateChanged(Z)V
.end method

.method public varargs onSyncInvoke([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;->onBluetoothStateChanged(Z)V

    return-void
.end method
