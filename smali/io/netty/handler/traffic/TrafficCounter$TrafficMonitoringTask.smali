.class final Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
.super Ljava/lang/Object;
.source "TrafficCounter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/traffic/TrafficCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrafficMonitoringTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/traffic/TrafficCounter;


# direct methods
.method private constructor <init>(Lio/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/traffic/TrafficCounter;Lio/netty/handler/traffic/TrafficCounter$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;-><init>(Lio/netty/handler/traffic/TrafficCounter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 170
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-boolean v0, v0, Lio/netty/handler/traffic/TrafficCounter;->monitorActive:Z

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    .line 174
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-object v0, v0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-object v0, v0, Lio/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lio/netty/handler/traffic/AbstractTrafficShapingHandler;

    iget-object v1, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-object v1, v0, Lio/netty/handler/traffic/TrafficCounter;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lio/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->this$0:Lio/netty/handler/traffic/TrafficCounter;

    iget-object v2, v2, Lio/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/netty/handler/traffic/TrafficCounter;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
