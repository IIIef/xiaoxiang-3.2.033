.class Lcom/jiabaida/little_elephant/util/CommandRunThread;
.super Ljava/lang/Thread;
.source "BluetoothUtil.java"


# instance fields
.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;


# direct methods
.method public constructor <init>(Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 765
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    .line 766
    iget-object p1, p1, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->queue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 774
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 776
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 781
    iget-char v2, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 785
    :cond_2
    iput-char v1, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    .line 787
    :cond_3
    iget-char v2, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    if-nez v2, :cond_6

    .line 788
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->startSend()V

    .line 791
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApi()[B

    move-result-object v2

    .line 793
    array-length v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_1
    if-ge v1, v3, :cond_7

    mul-int/lit8 v4, v1, 0x14

    add-int/lit8 v5, v4, 0x14

    .line 796
    array-length v6, v2

    if-le v5, v6, :cond_4

    .line 797
    array-length v5, v2

    .line 799
    :cond_4
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApi()[B

    move-result-object v6

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send pack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    array-length v6, v4

    invoke-static {v4, v6}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-virtual {v5, v4}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->writeDataToDevice([B)V

    if-ge v1, v3, :cond_5

    const-wide/16 v4, 0x5

    .line 805
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 807
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 812
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->lastSendTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    .line 816
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->queue:Ljava/util/Queue;

    monitor-enter v2

    .line 817
    :try_start_1
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-virtual {v3}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->readFailed()Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    const/4 v3, -0x2

    .line 818
    invoke-virtual {v0, v3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setResonseStatus(I)V

    .line 819
    new-instance v3, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    iget-object v5, v5, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->cmdWaitingList:Ljava/util/HashMap;

    .line 820
    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    invoke-direct {v3, v4, v5, v6}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;-><init>([BLjava/util/ArrayList;Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V

    .line 822
    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/CommandRunThread;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    iget-object v4, v4, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->responseExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v1}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v1, "TAG"

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   read time out  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->lastSendTime:J

    const-string v0, "HH:mm:SS"

    invoke-static {v4, v5, v0}, Lcom/jiabaida/little_elephant/util/TimeUtil;->getFormatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    const-wide/16 v0, 0x64

    .line 832
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 835
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
