.class public Lio/netty/handler/traffic/GlobalChannelTrafficCounter;
.super Lio/netty/handler/traffic/TrafficCounter;
.source "GlobalChannelTrafficCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public resetCumulativeTime()V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    check-cast v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    iget-object v0, v0, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;

    .line 124
    iget-object v1, v1, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler$PerChannel;->channelTrafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v1}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-super {p0}, Lio/netty/handler/traffic/TrafficCounter;->resetCumulativeTime()V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 95
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z

    .line 98
    new-instance v2, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;

    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    check-cast v3, Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;

    invoke-direct {v2, v3, p0}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter$MixedTrafficMonitoringTask;-><init>(Lio/netty/handler/traffic/GlobalChannelTrafficShapingHandler;Lio/netty/handler/traffic/TrafficCounter;)V

    iput-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitor:Ljava/lang/Runnable;

    .line 99
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitor:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 110
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 112
    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->monitorActive:Z

    .line 113
    invoke-static {}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->milliSecondFromNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->resetAccounting(J)V

    .line 114
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-virtual {v0, p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 115
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalChannelTrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
