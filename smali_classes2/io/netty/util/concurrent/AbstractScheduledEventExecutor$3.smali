.class Lio/netty/util/concurrent/AbstractScheduledEventExecutor$3;
.super Ljava/lang/Object;
.source "AbstractScheduledEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->removeScheduled(Lio/netty/util/concurrent/ScheduledFutureTask;)V
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

    .line 247
    iput-object p1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$3;->this$0:Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    iput-object p2, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$3;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 250
    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$3;->this$0:Lio/netty/util/concurrent/AbstractScheduledEventExecutor;

    iget-object v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$3;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->removeScheduled(Lio/netty/util/concurrent/ScheduledFutureTask;)V

    return-void
.end method
