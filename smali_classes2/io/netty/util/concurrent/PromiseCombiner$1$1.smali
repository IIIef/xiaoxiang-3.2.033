.class Lio/netty/util/concurrent/PromiseCombiner$1$1;
.super Ljava/lang/Object;
.source "PromiseCombiner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/PromiseCombiner$1;->operationComplete(Lio/netty/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/util/concurrent/PromiseCombiner$1;

.field final synthetic val$future:Lio/netty/util/concurrent/Future;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/PromiseCombiner$1;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/netty/util/concurrent/PromiseCombiner$1$1;->this$1:Lio/netty/util/concurrent/PromiseCombiner$1;

    iput-object p2, p0, Lio/netty/util/concurrent/PromiseCombiner$1$1;->val$future:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseCombiner$1$1;->this$1:Lio/netty/util/concurrent/PromiseCombiner$1;

    iget-object v1, p0, Lio/netty/util/concurrent/PromiseCombiner$1$1;->val$future:Lio/netty/util/concurrent/Future;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/PromiseCombiner$1;->access$100(Lio/netty/util/concurrent/PromiseCombiner$1;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
