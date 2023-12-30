.class public Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;
.super Ljava/lang/Object;
.source "BluetoothSearchTask.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_SEARCH_TIMEOUT:I = 0x22


# instance fields
.field private mBluetoothSearcher:Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

.field private mHandler:Landroid/os/Handler;

.field private searchDuration:I

.field private searchType:I


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/search/SearchTask;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchTask;->getSearchType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->setSearchType(I)V

    .line 26
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchTask;->getSearchDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->setSearchDuration(I)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getBluetoothSearcher()Lcom/inuker/bluetooth/library/search/BluetoothSearcher;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mBluetoothSearcher:Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    if-nez v0, :cond_0

    .line 48
    iget v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchType:I

    invoke-static {v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->newInstance(I)Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mBluetoothSearcher:Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mBluetoothSearcher:Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->getBluetoothSearcher()Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->cancelScanBluetooth()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->getBluetoothSearcher()Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->stopScanBluetooth()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isBluetoothClassicSearch()Z
    .locals 2

    .line 43
    iget v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBluetoothLeSearch()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSearchDuration(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchDuration:I

    return-void
.end method

.method public setSearchType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchType:I

    return-void
.end method

.method public start(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->getBluetoothSearcher()Lcom/inuker/bluetooth/library/search/BluetoothSearcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    .line 55
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchDuration:I

    int-to-long v0, v0

    const/16 v2, 0x22

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 67
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->isBluetoothLeSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ble"

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->isBluetoothClassicSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "classic"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    .line 75
    :goto_0
    iget v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->searchDuration:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    if-lt v1, v5, :cond_2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 76
    div-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%s search (%ds)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    mul-double v0, v0, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%s search (%.1fs)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
