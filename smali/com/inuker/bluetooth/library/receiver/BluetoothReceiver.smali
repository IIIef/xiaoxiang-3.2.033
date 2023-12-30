.class public Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_REGISTER:I = 0x1

.field private static mReceiver:Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;


# instance fields
.field private RECEIVERS:[Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;

.field private mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver$1;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver$1;-><init>(Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;

    .line 47
    invoke-static {v0}, Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;->newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BluetoothStateReceiver;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    .line 48
    invoke-static {v0}, Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;->newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BluetoothBondReceiver;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    .line 49
    invoke-static {v0}, Lcom/inuker/bluetooth/library/receiver/BleConnectStatusChangeReceiver;->newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BleConnectStatusChangeReceiver;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mDispatcher:Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;

    .line 50
    invoke-static {v0}, Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;->newInstance(Lcom/inuker/bluetooth/library/receiver/IReceiverDispatcher;)Lcom/inuker/bluetooth/library/receiver/BleCharacterChangeReceiver;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->RECEIVERS:[Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mListeners:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;
    .locals 2

    .line 54
    sget-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mReceiver:Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mReceiver:Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;

    invoke-direct {v1}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;-><init>()V

    sput-object v1, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mReceiver:Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mReceiver:Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    return-object v0
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 6

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->RECEIVERS:[Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 73
    invoke-virtual {v4}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->getActions()Ljava/util/List;

    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private registerInner(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->registerInner(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V

    :goto_0
    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v3, "BluetoothReceiver onReceive: %s"

    .line 93
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->RECEIVERS:[Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 96
    invoke-virtual {v4, v0}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->containsAction(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v4, p1, p2}, Lcom/inuker/bluetooth/library/receiver/AbsBluetoothReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public register(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
