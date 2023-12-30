.class public Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;
.super Lcom/inuker/bluetooth/library/search/BluetoothSearcher;
.source "BluetoothClassicSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;,
        Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothClassicSearcherHolder;
    }
.end annotation


# instance fields
.field private mReceiver:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;-><init>()V

    .line 22
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;
    .locals 1

    .line 26
    invoke-static {}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothClassicSearcherHolder;->access$000()Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;

    move-result-object v0

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mReceiver:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;-><init>(Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$1;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mReceiver:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mReceiver:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;

    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mReceiver:Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher$BluetoothSearchReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelScanBluetooth()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->unregisterReceiver()V

    .line 64
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->cancelScanBluetooth()V

    return-void
.end method

.method public startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->startScanBluetooth(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    .line 38
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->registerReceiver()V

    .line 40
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    return-void
.end method

.method public stopScanBluetooth()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->unregisterReceiver()V

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/classic/BluetoothClassicSearcher;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearcher;->stopScanBluetooth()V

    return-void
.end method
