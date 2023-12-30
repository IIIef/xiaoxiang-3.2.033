.class public Lio/netty/channel/ThreadPerChannelEventLoopGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "ThreadPerChannelEventLoopGroup.java"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final activeChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final childArgs:[Ljava/lang/Object;

.field private final childTerminationListener:Lio/netty/util/concurrent/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FutureListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final idleChildren:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final maxChannels:I

.field private volatile shuttingDown:Z

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field

.field private final tooManyChannels:Lio/netty/channel/ChannelException;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    .line 55
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    .line 60
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 61
    new-instance v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;

    invoke-direct {v0, p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/FutureListener;

    if-ltz p1, :cond_1

    const-string v0, "executor"

    .line 125
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 129
    sget-object p3, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    iput-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    .line 134
    :goto_0
    iput p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    .line 135
    iput-object p2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->executor:Ljava/util/concurrent/Executor;

    .line 137
    new-instance p2, Lio/netty/channel/ChannelException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too many channels (max: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    const-class p1, Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    const-string p3, "nextChild()"

    invoke-static {p2, p1, p3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelException;

    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    return-void

    .line 121
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "maxChannels: %d (expected: >= 0)"

    .line 121
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1

    .line 104
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, v0, p3}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method private nextChild()Lio/netty/channel/EventLoop;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    if-nez v0, :cond_2

    .line 319
    iget v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    throw v0

    .line 322
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/FutureListener;

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 325
    :cond_2
    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 314
    :cond_3
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "shutting down"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 250
    iget-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/channel/EventLoop;

    .line 252
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long p3, v4, v2

    if-gtz p3, :cond_1

    .line 254
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p1

    return p1

    .line 256
    :cond_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v4, v5, p3}, Lio/netty/channel/EventLoop;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 261
    :cond_2
    iget-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/channel/EventLoop;

    .line 263
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long p3, v4, v2

    if-gtz p3, :cond_4

    .line 265
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p1

    return p1

    .line 267
    :cond_4
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v4, v5, p3}, Lio/netty/channel/EventLoop;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p1

    return p1
.end method

.method public isShutdown()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 219
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 223
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 224
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isShuttingDown()Z
    .locals 3

    .line 203
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 204
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 208
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 209
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 3

    .line 233
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 234
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 238
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 239
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lio/netty/util/internal/ReadOnlyIterator;

    iget-object v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected varargs newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance p1, Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-direct {p1, p0}, Lio/netty/channel/ThreadPerChannelEventLoop;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    return-object p1
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 3

    const-string v0, "channel"

    .line 278
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 282
    new-instance v1, Lio/netty/channel/DefaultChannelPromise;

    invoke-direct {v1, p1, v0}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 284
    new-instance v1, Lio/netty/channel/FailedChannelFuture;

    sget-object v2, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v1, p1, v2, v0}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "channel"

    .line 302
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 307
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p2
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 291
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 293
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method public shutdown()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    .line 188
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 189
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    .line 192
    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    .line 163
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/netty/channel/EventLoop;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 164
    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/netty/channel/EventLoop;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .line 167
    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method
