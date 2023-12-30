.class public Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;
.super Ljava/lang/Object;
.source "BluetoothSearchHelper.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;


# instance fields
.field private mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;)Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    return-object p1
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;
    .locals 3

    .line 32
    sget-object v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->sInstance:Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->sInstance:Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;

    invoke-direct {v1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;-><init>()V

    .line 36
    const-class v2, Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    invoke-static {v1, v2, v1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    sput-object v1, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->sInstance:Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->sInstance:Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 106
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public startSearch(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;

    invoke-direct {v0, p0, p2}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;-><init>(Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->setSearchResponse(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    .line 47
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBluetoothEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->cancel()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->stopSearch()V

    .line 52
    iget-object p2, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    if-nez p2, :cond_1

    .line 53
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    .line 54
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopSearch()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->cancel()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->mCurrentRequest:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    :cond_0
    return-void
.end method
