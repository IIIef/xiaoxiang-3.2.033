.class public Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;
.super Lcom/inuker/bluetooth/library/search/BluetoothSearcher;
.source "BluetoothLESearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$BluetoothLESearcherHolder;
    }
.end annotation


# instance fields
.field private final mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;-><init>()V

    .line 64
    new-instance v0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;-><init>(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 20
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;
    .locals 1

    .line 24
    invoke-static {}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$BluetoothLESearcherHolder;->access$000()Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected cancelScanBluetooth()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 61
    invoke-super {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->cancelScanBluetooth()V

    return-void
.end method

.method public startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    .line 38
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    return-void
.end method

.method public stopScanBluetooth()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    .line 52
    :goto_0
    invoke-super {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->stopScanBluetooth()V

    return-void
.end method
