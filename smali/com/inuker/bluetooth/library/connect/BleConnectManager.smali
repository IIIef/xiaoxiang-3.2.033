.class public Lcom/inuker/bluetooth/library/connect/BleConnectManager;
.super Ljava/lang/Object;
.source "BleConnectManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleConnectManager"

.field private static mBleConnectMasters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;",
            ">;"
        }
    .end annotation
.end field

.field private static mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mBleConnectMasters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRequest(Ljava/lang/String;I)V
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->clearRequest(I)V

    return-void
.end method

.method public static connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->connect(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static disconnect(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->disconnect()V

    return-void
.end method

.method private static getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;
    .locals 2

    .line 38
    sget-object v0, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mBleConnectMasters:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectMaster;->newInstance(Ljava/lang/String;Landroid/os/Looper;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mBleConnectMasters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static getWorkerLooper()Landroid/os/Looper;
    .locals 2

    .line 28
    sget-object v0, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    :cond_0
    sget-object v0, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->indicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->read(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->readRssi(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static refreshCache(Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->refreshCache()V

    return-void
.end method

.method public static unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->unnotify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->write(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 6

    .line 72
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method

.method public static writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->getBleConnectMaster(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/IBleConnectMaster;->writeNoRsp(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    return-void
.end method
