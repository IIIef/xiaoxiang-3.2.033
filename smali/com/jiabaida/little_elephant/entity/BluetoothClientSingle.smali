.class public Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;
.super Lcom/inuker/bluetooth/library/BluetoothClient;
.source "BluetoothClientSingle.java"


# static fields
.field private static instance:Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;

.field public static final readCharaUUID_1:Ljava/util/UUID;

.field public static final readCharaUUID_2:Ljava/util/UUID;

.field public static final rwCharaUUID_1:Ljava/util/UUID;

.field public static final rwCharaUUID_2:Ljava/util/UUID;

.field public static final rwServiceUUID_1:Ljava/util/UUID;

.field public static final rwServiceUUID_2:Ljava/util/UUID;


# instance fields
.field private mConOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

.field private mSearchRequst:Lcom/inuker/bluetooth/library/search/SearchRequest;

.field public readCharaUUID:Ljava/util/UUID;

.field public rwCharaUUID:Ljava/util/UUID;

.field public rwServiceUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID_1:Ljava/util/UUID;

    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    .line 24
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID_1:Ljava/util/UUID;

    .line 25
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID_1:Ljava/util/UUID;

    const-string v0, "0000ff00-0000-1000-8000-00805f9b34fb"

    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID_2:Ljava/util/UUID;

    const-string v0, "0000ff02-0000-1000-8000-00805f9b34fb"

    .line 28
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID_2:Ljava/util/UUID;

    const-string v0, "0000ff01-0000-1000-8000-00805f9b34fb"

    .line 29
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID_2:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/BluetoothClient;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    invoke-direct {p1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;-><init>()V

    const/16 v0, 0xbb8

    const/4 v1, 0x2

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->searchBluetoothLeDevice(II)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->build()Lcom/inuker/bluetooth/library/search/SearchRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->mSearchRequst:Lcom/inuker/bluetooth/library/search/SearchRequest;

    .line 38
    new-instance p1, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    invoke-direct {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;-><init>()V

    invoke-virtual {p1, v1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->setConnectRetry(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    move-result-object p1

    const/16 v0, 0x2710

    .line 39
    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->setConnectTimeout(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    move-result-object p1

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->setServiceDiscoverRetry(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    move-result-object p1

    const/16 v0, 0xfa0

    .line 41
    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->setServiceDiscoverTimeout(I)Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->build()Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->mConOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;
    .locals 2

    const-class v0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->instance:Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->instance:Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;

    .line 50
    :cond_0
    sget-object p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->instance:Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->mConOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-super {p0, p1, v0, p2}, Lcom/inuker/bluetooth/library/BluetoothClient;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleConnectResponse;)V

    return-void
.end method

.method public indicate(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID:Ljava/util/UUID;

    invoke-super {p0, p1, v0, v1, p2}, Lcom/inuker/bluetooth/library/BluetoothClient;->indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID:Ljava/util/UUID;

    invoke-super {p0, p1, v0, v1, p2}, Lcom/inuker/bluetooth/library/BluetoothClient;->notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleNotifyResponse;)V

    return-void
.end method

.method public read(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID:Ljava/util/UUID;

    invoke-super {p0, p1, v0, v1, p2}, Lcom/inuker/bluetooth/library/BluetoothClient;->read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleReadResponse;)V

    return-void
.end method

.method public search(Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->mSearchRequst:Lcom/inuker/bluetooth/library/search/SearchRequest;

    invoke-super {p0, v0, p1}, Lcom/inuker/bluetooth/library/BluetoothClient;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V

    return-void
.end method

.method public setUUIDS(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID_1:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    .line 61
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID_1:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID:Ljava/util/UUID;

    .line 62
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID_1:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID:Ljava/util/UUID;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID_2:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    .line 66
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID_2:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID:Ljava/util/UUID;

    .line 67
    sget-object p1, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID_2:Ljava/util/UUID;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->readCharaUUID:Ljava/util/UUID;

    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V
    .locals 6

    .line 76
    iget-object v2, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwServiceUUID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/entity/BluetoothClientSingle;->rwCharaUUID:Ljava/util/UUID;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Lcom/inuker/bluetooth/library/BluetoothClient;->write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleWriteResponse;)V

    return-void
.end method
