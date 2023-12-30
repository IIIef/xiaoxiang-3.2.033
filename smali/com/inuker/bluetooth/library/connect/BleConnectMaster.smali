.class public Lcom/inuker/bluetooth/library/connect/BleConnectMaster;
.super Ljava/lang/Object;
.source "BleConnectMaster.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBleConnectDispatcher:Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mAddress:Ljava/lang/String;

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mBleConnectDispatcher:Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->newInstance(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mBleConnectDispatcher:Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mBleConnectDispatcher:Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Landroid/os/Looper;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;
    .locals 1

    .line 41
    new-instance v0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;

    invoke-direct {v0, p0, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 42
    const-class p0, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    invoke-static {v0, p0, v0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    return-object p0
.end method


# virtual methods
.method public clearRequest(I)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->clearRequest(I)V

    return-void
.end method

.method public connect(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->connect(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->disconnect()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 118
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public indicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->indicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public read(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->read(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public readRssi(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->readRemoteRssi(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public refreshCache()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->refreshCache()V

    return-void
.end method

.method public unnotify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->unnotify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public write(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->write(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 6

    .line 77
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public writeNoRsp(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->getConnectDispatcher()Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->writeNoRsp(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method
