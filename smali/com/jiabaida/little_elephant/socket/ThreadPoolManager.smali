.class public Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static final SIZE_CORE_POOL:I = 0x14

.field private static final SIZE_MAX_POOL:I = 0x14

.field private static sThreadPoolManager:Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;


# instance fields
.field private final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->sThreadPoolManager:Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static newInstance()Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->sThreadPoolManager:Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public addExecuteTask(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCompletedTaskCount()J
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public getQueue()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method protected isTaskEnd()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public perpare()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartCoreThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/jiabaida/little_elephant/socket/ThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method
