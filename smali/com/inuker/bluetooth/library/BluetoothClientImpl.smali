.class public Lcom/inuker/bluetooth/library/BluetoothClientImpl;
.super Ljava/lang/Object;
.source "BluetoothClientImpl.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/IBluetoothClient;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_INVOKE_PROXY:I = 0x1

.field private static final MSG_REG_RECEIVER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothClientImpl"

.field private static sInstance:Lcom/inuker/bluetooth/library/IBluetoothClient;


# instance fields
.field private mBluetoothBondListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Lcom/inuker/bluetooth/library/IBluetoothService;

.field private mBluetoothStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mNotifyResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$1;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Lcom/inuker/bluetooth/library/BluetoothContext;->set(Landroid/content/Context;)V

    .line 112
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerThread:Landroid/os/HandlerThread;

    .line 113
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerHandler:Landroid/os/Handler;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnectStatusListeners:Ljava/util/HashMap;

    .line 119
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothStateListeners:Ljava/util/List;

    .line 120
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothBondListeners:Ljava/util/List;

    .line 122
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic access$002(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/IBluetoothService;)Lcom/inuker/bluetooth/library/IBluetoothService;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothService:Lcom/inuker/bluetooth/library/IBluetoothService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->notifyBluetoothManagerReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->saveNotifyListener(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->removeNotifyListener(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$500(Lcom/inuker/bluetooth/library/BluetoothClientImpl;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->dispatchBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->dispatchBondStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->clearNotifyListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->dispatchConnectionStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->dispatchCharacterNotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V

    return-void
.end method

.method private bindServiceSync()V
    .locals 4

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 152
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    iget-object v2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/inuker/bluetooth/library/BluetoothService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->waitBluetoothManagerReady()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->getInstance()Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothService:Lcom/inuker/bluetooth/library/IBluetoothService;

    :goto_0
    return-void
.end method

.method private checkRuntime(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 663
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 664
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 665
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private clearNotifyListener(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 348
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private dispatchBluetoothStateChanged(I)V
    .locals 7

    const/4 v0, 0x1

    .line 647
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_2

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothStateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-ne p1, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 650
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;->invokeSync([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchBondStateChanged(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    .line 656
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 657
    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothBondListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;->invokeSync([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchCharacterNotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 1

    const/4 v0, 0x1

    .line 623
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 624
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 626
    invoke-direct {p0, p2, p3}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->generateCharacterKey(Ljava/util/UUID;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 629
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    .line 630
    invoke-interface {v0, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;->onNotify(Ljava/util/UUID;Ljava/util/UUID;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchConnectionStatus(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    .line 637
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 638
    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnectStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 639
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 641
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;->invokeSync([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateCharacterKey(Ljava/util/UUID;Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s_%s"

    .line 352
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBluetoothService()Lcom/inuker/bluetooth/library/IBluetoothService;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothService:Lcom/inuker/bluetooth/library/IBluetoothService;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->bindServiceSync()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothService:Lcom/inuker/bluetooth/library/IBluetoothService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inuker/bluetooth/library/IBluetoothClient;
    .locals 2

    .line 128
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->sInstance:Lcom/inuker/bluetooth/library/IBluetoothClient;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->sInstance:Lcom/inuker/bluetooth/library/IBluetoothClient;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;-><init>(Landroid/content/Context;)V

    .line 132
    const-class p0, Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-static {v1, p0, v1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inuker/bluetooth/library/IBluetoothClient;

    sput-object p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->sInstance:Lcom/inuker/bluetooth/library/IBluetoothClient;

    .line 134
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 136
    :cond_1
    :goto_0
    sget-object p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->sInstance:Lcom/inuker/bluetooth/library/IBluetoothClient;

    return-object p0
.end method

.method private notifyBluetoothManagerReady()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 561
    iput-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method private registerBluetoothReceiver()V
    .locals 2

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 589
    invoke-static {}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->getInstance()Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$13;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    invoke-interface {v0, v1}, Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;->register(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V

    .line 596
    invoke-static {}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->getInstance()Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$14;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    invoke-interface {v0, v1}, Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;->register(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V

    .line 603
    invoke-static {}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->getInstance()Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$15;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    invoke-interface {v0, v1}, Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;->register(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V

    .line 613
    invoke-static {}, Lcom/inuker/bluetooth/library/receiver/BluetoothReceiver;->getInstance()Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$16;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;)V

    invoke-interface {v0, v1}, Lcom/inuker/bluetooth/library/receiver/IBluetoothReceiver;->register(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothReceiverListener;)V

    return-void
.end method

.method private removeNotifyListener(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x1

    .line 338
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 339
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 341
    invoke-direct {p0, p2, p3}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->generateCharacterKey(Ljava/util/UUID;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    .line 342
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V
    .locals 1

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 534
    :try_start_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->getBluetoothService()Lcom/inuker/bluetooth/library/IBluetoothService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 540
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/IBluetoothService;->callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x6

    const/4 p2, 0x0

    .line 542
    invoke-virtual {p3, p1, p2}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;->onResponse(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 545
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private saveNotifyListener(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 2

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 321
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mNotifyResponses:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->generateCharacterKey(Ljava/util/UUID;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    .line 330
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private waitBluetoothManagerReady()V
    .locals 1

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearRequest(Ljava/lang/String;I)V
    .locals 2

    .line 514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 515
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.type"

    .line 516
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x14

    const/4 p2, 0x0

    .line 517
    invoke-direct {p0, p1, v0, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
    .locals 2

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.options"

    .line 185
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;

    invoke-direct {p1, p0, p3}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$2;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 202
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, v1, v0, v2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->clearNotifyListener(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 576
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->registerBluetoothReceiver()V

    goto :goto_0

    .line 578
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1
.end method

.method public indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 8

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 398
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra.service.uuid"

    .line 399
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "extra.character.uuid"

    .line 400
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 401
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$10;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V

    const/16 p1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 8

    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra.service.uuid"

    .line 359
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "extra.character.uuid"

    .line 360
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 361
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$8;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$8;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 552
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return p1
.end method

.method public read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 2

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 232
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.service.uuid"

    .line 233
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.character.uuid"

    .line 234
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 235
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$3;

    invoke-direct {p1, p0, p4}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$3;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V

    const/4 p2, 0x3

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 2

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 267
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.service.uuid"

    .line 268
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.character.uuid"

    .line 269
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.descriptor.uuid"

    .line 270
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 271
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;

    invoke-direct {p1, p0, p5}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$5;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V

    const/16 p2, 0xd

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V
    .locals 2

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 423
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;

    invoke-direct {p1, p0, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V

    const/16 p2, 0x8

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public refreshCache(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 522
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 524
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x15

    const/4 v1, 0x0

    .line 525
    invoke-direct {p0, p1, v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public registerBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothBondListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothBondListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 482
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 210
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnectStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnectStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 215
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 216
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
    .locals 2

    .line 437
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.request"

    .line 438
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;

    invoke-direct {p1, p0, p2}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V

    const/16 p2, 0xb

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public stopSearch()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 477
    invoke-direct {p0, v0, v1, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public unindicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
    .locals 0

    .line 417
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V

    return-void
.end method

.method public unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
    .locals 8

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 378
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra.service.uuid"

    .line 379
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "extra.character.uuid"

    .line 380
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 381
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$9;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public unregisterBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 506
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    if-eqz p1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothBondListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 490
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mBluetoothStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->checkRuntime(Z)V

    .line 223
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->mConnectStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 224
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 2

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 249
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.service.uuid"

    .line 250
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.character.uuid"

    .line 251
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.byte.value"

    .line 252
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 253
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;

    invoke-direct {p1, p0, p5}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$4;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    const/4 p2, 0x4

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 2

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 285
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.service.uuid"

    .line 286
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.character.uuid"

    .line 287
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.descriptor.uuid"

    .line 288
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.byte.value"

    .line 289
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 290
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$6;

    invoke-direct {p1, p0, p6}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$6;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    const/16 p2, 0xe

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method

.method public writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 2

    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.mac"

    .line 304
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.service.uuid"

    .line 305
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.character.uuid"

    .line 306
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "extra.byte.value"

    .line 307
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 308
    new-instance p1, Lcom/inuker/bluetooth/library/BluetoothClientImpl$7;

    invoke-direct {p1, p0, p5}, Lcom/inuker/bluetooth/library/BluetoothClientImpl$7;-><init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    const/4 p2, 0x5

    invoke-direct {p0, p2, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->safeCallBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;)V

    return-void
.end method
