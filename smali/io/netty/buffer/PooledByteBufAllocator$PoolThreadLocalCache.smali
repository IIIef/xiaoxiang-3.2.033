.class final Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PoolThreadLocalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/buffer/PoolThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;

.field private final useCacheForAllThreads:Z


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V
    .locals 0

    .line 447
    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    .line 448
    iput-boolean p2, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    return-void
.end method

.method private leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 481
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 485
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 486
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 487
    aget-object v2, p1, v1

    .line 488
    iget-object v3, v2, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, v0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected declared-synchronized initialValue()Lio/netty/buffer/PoolThreadCache;
    .locals 13

    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v2

    .line 454
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->leastUsedArena([Lio/netty/buffer/PoolArena;)Lio/netty/buffer/PoolArena;

    move-result-object v3

    .line 456
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 457
    iget-boolean v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->useCacheForAllThreads:Z

    if-nez v1, :cond_1

    instance-of v0, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Lio/netty/buffer/PoolThreadCache;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lio/netty/buffer/PoolThreadCache;

    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    .line 459
    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$200(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v4

    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$300(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v5

    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$400(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v6

    .line 460
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$500()I

    move-result v7

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$600()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V

    .line 462
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 463
    invoke-static {}, Lio/netty/util/internal/ThreadExecutorMap;->currentExecutor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 465
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v1}, Lio/netty/buffer/PooledByteBufAllocator;->access$800(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v8

    .line 466
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$700()J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 465
    invoke-interface/range {v6 .. v12}, Lio/netty/util/concurrent/EventExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->initialValue()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/buffer/PoolThreadCache;)V
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    check-cast p1, Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->onRemoval(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method
