.class public Lcom/inuker/bluetooth/library/BluetoothClient;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/IBluetoothClient;


# instance fields
.field private mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context null"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->getInstance(Landroid/content/Context;)Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    return-void
.end method


# virtual methods
.method public clearRequest(Ljava/lang/String;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IBluetoothClient;->clearRequest(Ljava/lang/String;I)V

    return-void
.end method

.method public closeBluetooth()Z
    .locals 1

    .line 191
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->closeBluetooth()Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "connect %s"

    .line 44
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 45
    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;

    .line 46
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/IBluetoothClient;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0, p2}, Lcom/inuker/bluetooth/library/BluetoothClient;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "disconnect %s"

    .line 51
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public getBondState(Ljava/lang/String;)I
    .locals 0

    .line 199
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBondState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getConnectStatus(Ljava/lang/String;)I
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getConnectStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "indicate %s: service = %s, character = %s"

    .line 112
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 114
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    .line 115
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/IBluetoothClient;->indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    return-void
.end method

.method public isBleSupported()Z
    .locals 1

    .line 195
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    return v0
.end method

.method public isBluetoothOpened()Z
    .locals 1

    .line 183
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBluetoothEnabled()Z

    move-result v0

    return v0
.end method

.method public notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "notify %s: service = %s, character = %s"

    .line 96
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 98
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;

    .line 99
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/IBluetoothClient;->notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    return-void
.end method

.method public openBluetooth()Z
    .locals 1

    .line 187
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->openBluetooth()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "read character for %s: service = %s, character = %s"

    .line 57
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 59
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;

    .line 60
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/IBluetoothClient;->read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V

    return-void
.end method

.method public readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "readDescriptor for %s: service = %s, character = %s"

    .line 74
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 75
    invoke-static {p5}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;

    .line 76
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/inuker/bluetooth/library/IBluetoothClient;->readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V

    return-void
.end method

.method public readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "readRssi %s"

    .line 128
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;

    .line 131
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IBluetoothClient;->readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V

    return-void
.end method

.method public refreshCache(Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->refreshCache(Ljava/lang/String;)V

    return-void
.end method

.method public registerBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->registerBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V

    return-void
.end method

.method public registerBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->registerBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V

    return-void
.end method

.method public registerConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IBluetoothClient;->registerConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V

    return-void
.end method

.method public search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "search %s"

    .line 136
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 138
    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    .line 139
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IBluetoothClient;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V

    return-void
.end method

.method public stopSearch()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopSearch"

    .line 144
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/IBluetoothClient;->stopSearch()V

    return-void
.end method

.method public unindicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "indicate %s: service = %s, character = %s"

    .line 120
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 122
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;

    .line 123
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/BluetoothClient;->unindicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V

    return-void
.end method

.method public unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "unnotify %s: service = %s, character = %s"

    .line 104
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 106
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;

    .line 107
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/IBluetoothClient;->unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleUnnotifyResponse;)V

    return-void
.end method

.method public unregisterBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->unregisterBluetoothBondListener(Lcom/inuker/bluetooth/library/receiver/listener/BluetoothBondListener;)V

    return-void
.end method

.method public unregisterBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/IBluetoothClient;->unregisterBluetoothStateListener(Lcom/inuker/bluetooth/library/connect/listener/BluetoothStateListener;)V

    return-void
.end method

.method public unregisterConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IBluetoothClient;->unregisterConnectStatusListener(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/listener/BleConnectStatusListener;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 66
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "write character for %s: service = %s, character = %s, value = %s"

    .line 65
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 68
    invoke-static {p5}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;

    .line 69
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/inuker/bluetooth/library/IBluetoothClient;->write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    return-void
.end method

.method public writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "writeDescriptor for %s: service = %s, character = %s"

    .line 81
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 82
    invoke-static {p6}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    move-object v6, p6

    check-cast v6, Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;

    .line 83
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/inuker/bluetooth/library/IBluetoothClient;->writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    return-void
.end method

.method public writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 88
    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "writeNoRsp %s: service = %s, character = %s, value = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 90
    invoke-static {p5}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/inuker/bluetooth/library/connect/response/BleWriteResponse;

    .line 91
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClient;->mClient:Lcom/inuker/bluetooth/library/IBluetoothClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/inuker/bluetooth/library/IBluetoothClient;->writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    return-void
.end method
