.class public Lcom/jiabaida/little_elephant/thread/SendCMDThread;
.super Ljava/lang/Thread;
.source "SendCMDThread.java"


# instance fields
.field private mPauseFlag:Z

.field private mPauseLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseFlag:Z

    return-void
.end method


# virtual methods
.method public isPause()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseFlag:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 16
    :try_start_0
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseFlag:Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 22
    :try_start_0
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseFlag:Z

    .line 23
    iget-object v1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseThread()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/jiabaida/little_elephant/thread/SendCMDThread;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
