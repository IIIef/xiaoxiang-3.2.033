.class public abstract Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;
.super Ljava/lang/Object;
.source "AbsBluetoothReceiver.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    .line 30
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothContext;->get()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method containsAction(Ljava/lang/String;)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->getActions()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method abstract getActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getListeners(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;->getListeners(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method abstract onReceive(Landroid/content/Context;Landroid/content/Intent;)Z
.end method
