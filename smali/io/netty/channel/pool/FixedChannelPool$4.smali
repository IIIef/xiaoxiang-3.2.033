.class Lio/netty/channel/pool/FixedChannelPool$4;
.super Ljava/lang/Object;
.source "FixedChannelPool.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/pool/FixedChannelPool;->release(Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/channel/Channel;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$4;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    iput-object p2, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$channel:Lio/netty/channel/Channel;

    iput-object p3, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$4;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$500(Lio/netty/channel/pool/FixedChannelPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$channel:Lio/netty/channel/Channel;

    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 307
    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$promise:Lio/netty/util/concurrent/Promise;

    sget-object v0, Lio/netty/channel/pool/FixedChannelPool;->POOL_CLOSED_ON_RELEASE_EXCEPTION:Ljava/lang/IllegalStateException;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 311
    :cond_0
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$4;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {p1}, Lio/netty/channel/pool/FixedChannelPool;->access$600(Lio/netty/channel/pool/FixedChannelPool;)V

    .line 313
    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$promise:Lio/netty/util/concurrent/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 315
    :cond_1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 317
    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$4;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$600(Lio/netty/channel/pool/FixedChannelPool;)V

    .line 320
    :cond_2
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$4;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_0
    return-void
.end method
