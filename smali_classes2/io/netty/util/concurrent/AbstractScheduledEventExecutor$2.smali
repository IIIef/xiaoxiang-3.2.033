.class Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;
.super Ljava/lang/Object;
.source "AbstractScheduledEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

.field final synthetic val$task:Lio/netty/util/concurrent/ScheduledFutureTask;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;->this$0:Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    iput-object p2, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;->this$0:Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    invoke-virtual {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-interface {v0, v1}, Lio/netty/util/internal/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
