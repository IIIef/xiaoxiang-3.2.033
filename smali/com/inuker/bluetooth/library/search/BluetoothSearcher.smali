.class public Lcom/inuker/bluetooth/library/search/BluetoothSearcher;
.super Ljava/lang/Object;
.source "BluetoothSearcher.java"


# instance fields
.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/inuker/bluetooth/library/search/BluetoothSearcher;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 22
    invoke-static {}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->getInstance()Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "unknown search type %d"

    .line 24
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_1
    invoke-static {}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->getInstance()Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    move-result-object p0

    return-object p0
.end method

.method private notifySearchCanceled()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchCanceled()V

    :cond_0
    return-void
.end method

.method private notifySearchStarted()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStarted()V

    :cond_0
    return-void
.end method

.method private notifySearchStopped()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStopped()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelScanBluetooth()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->notifySearchCanceled()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    return-void
.end method

.method protected notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    :cond_0
    return-void
.end method

.method protected startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    .line 31
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->notifySearchStarted()V

    return-void
.end method

.method protected stopScanBluetooth()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->notifySearchStopped()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    return-void
.end method
