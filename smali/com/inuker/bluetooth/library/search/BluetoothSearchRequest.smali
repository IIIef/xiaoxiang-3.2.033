.class public Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;
.super Ljava/lang/Object;
.source "BluetoothSearchRequest.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;
    }
.end annotation


# static fields
.field private static final MSG_DEVICE_FOUND:I = 0x12

.field private static final MSG_START_SEARCH:I = 0x11

.field private static final SCAN_INTERVAL:I = 0x64


# instance fields
.field private mCurrentTask:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

.field private mHandler:Landroid/os/Handler;

.field private mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

.field private mSearchTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/search/SearchRequest;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchRequest;->getTasks()Ljava/util/List;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/search/SearchTask;

    .line 33
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    new-instance v2, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    invoke-direct {v2, v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;-><init>(Lcom/inuker/bluetooth/library/search/SearchTask;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private notifyBondedBluetoothClassicDevices()V
    .locals 3

    .line 130
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBondedBluetoothClassicDevices()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 133
    new-instance v2, Lcom/inuker/bluetooth/library/search/SearchResult;

    invoke-direct {v2, v1}, Lcom/inuker/bluetooth/library/search/SearchResult;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v2}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConnectedBluetoothDevices()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    .line 103
    invoke-virtual {v3}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->isBluetoothLeSearch()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v3}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->isBluetoothClassicSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown search task type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyConnectedBluetoothLeDevices()V

    :cond_3
    if-eqz v2, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyBondedBluetoothClassicDevices()V

    :cond_4
    return-void
.end method

.method private notifyConnectedBluetoothLeDevices()V
    .locals 3

    .line 122
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getConnectedBluetoothLeDevices()Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 125
    new-instance v2, Lcom/inuker/bluetooth/library/search/SearchResult;

    invoke-direct {v2, v1}, Lcom/inuker/bluetooth/library/search/SearchResult;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v2}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private scheduleNewSearchTask()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mCurrentTask:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    .line 73
    new-instance v1, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;

    invoke-direct {v1, p0, v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;-><init>(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;)V

    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->start(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mCurrentTask:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    .line 77
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStopped()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mCurrentTask:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->cancel()V

    .line 86
    iput-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mCurrentTask:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchCanceled()V

    .line 95
    :cond_1
    iput-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/inuker/bluetooth/library/search/SearchResult;

    .line 62
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->scheduleNewSearchTask()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setSearchResponse(Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    return-void
.end method

.method public start()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchResponse:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStarted()V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->notifyConnectedBluetoothDevices()V

    .line 50
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->mSearchTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
