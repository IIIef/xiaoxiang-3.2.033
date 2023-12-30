.class public Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;
.super Ljava/lang/Object;
.source "BleConnectDispatcher.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;
.implements Lcom/inuker/bluetooth/library/RuntimeChecker;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MAX_REQUEST_COUNT:I = 0x64

.field private static final MSG_SCHEDULE_NEXT:I = 0x12


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBleWorkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/connect/request/BleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

.field private mHandler:Landroid/os/Handler;

.field private mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mAddress:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;

    invoke-direct {v0, p1, p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;-><init>(Ljava/lang/String;Lcom/inuker/bluetooth/library/RuntimeChecker;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->checkRuntime()V

    .line 165
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 166
    invoke-virtual {p1, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->setRuntimeChecker(Lcom/inuker/bluetooth/library/RuntimeChecker;)V

    .line 167
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->setAddress(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->setWorker(Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;)V

    .line 169
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x8

    .line 171
    invoke-virtual {p1, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V

    :goto_0
    const-wide/16 v0, 0xa

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->scheduleNextRequest(J)V

    return-void
.end method

.method private isRequestMatch(Lcom/inuker/bluetooth/library/connect/request/BleRequest;I)Z
    .locals 3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 109
    instance-of p1, p1, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;

    return p1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 111
    instance-of p2, p1, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/inuker/bluetooth/library/connect/request/BleWriteNoRspRequest;

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_6

    .line 113
    instance-of p2, p1, Lcom/inuker/bluetooth/library/connect/request/BleNotifyRequest;

    if-nez p2, :cond_4

    instance-of p2, p1, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;

    if-nez p2, :cond_4

    instance-of p1, p1, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_7

    .line 116
    instance-of p1, p1, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;

    return p1

    :cond_7
    return v1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;
    .locals 1

    .line 46
    new-instance v0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private scheduleNextRequest()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    .line 201
    invoke-virtual {v0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->process(Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;)V

    :cond_1
    return-void
.end method

.method private scheduleNextRequest(J)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public checkRuntime()V
    .locals 2

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread Context Illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearRequest(I)V
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->checkRuntime()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "clearRequest %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    .line 94
    invoke-direct {p0, v2, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->isRequestMatch(Lcom/inuker/bluetooth/library/connect/request/BleRequest;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    .line 101
    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->cancel()V

    goto :goto_2

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public connect(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;

    invoke-direct {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;-><init>(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->checkRuntime()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Process disconnect"

    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->cancel()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    .line 71
    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->cancel()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mBleWorkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->closeGatt()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->scheduleNextRequest()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public indicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/request/BleIndicateRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public notify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleNotifyRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/request/BleNotifyRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public onRequestCompleted(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->checkRuntime()V

    .line 181
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->mCurrentRequest:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    const-wide/16 v0, 0xa

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->scheduleNextRequest(J)V

    return-void

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "request not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/request/BleReadRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 135
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/request/BleReadDescriptorRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public readRemoteRssi(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 159
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;

    invoke-direct {v0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleReadRssiRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public refreshCache()V
    .locals 2

    .line 80
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public unindicate(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public unnotify(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/request/BleUnnotifyRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public write(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 7

    .line 139
    new-instance v6, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inuker/bluetooth/library/connect/request/BleWriteDescriptorRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v6}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public writeNoRsp(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/inuker/bluetooth/library/connect/request/BleWriteNoRspRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/request/BleWriteNoRspRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectDispatcher;->addNewRequest(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method
