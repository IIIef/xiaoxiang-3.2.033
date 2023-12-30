.class Lio/netty/channel/pool/FixedChannelPool$AcquireListener;
.super Ljava/lang/Object;
.source "FixedChannelPool.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/FixedChannelPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcquireListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected acquired:Z

.field private final originalPromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/channel/pool/FixedChannelPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 401
    const-class v0, Lio/netty/channel/pool/FixedChannelPool;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/pool/FixedChannelPool;Lio/netty/util/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    if-eqz v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$1100(Lio/netty/channel/pool/FixedChannelPool;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    return-void
.end method

.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$500(Lio/netty/channel/pool/FixedChannelPool;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/Channel;

    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 418
    :cond_0
    iget-object p1, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    sget-object v0, Lio/netty/channel/pool/FixedChannelPool;->POOL_CLOSED_ON_ACQUIRE_EXCEPTION:Ljava/lang/IllegalStateException;

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-void

    .line 422
    :cond_1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_1

    .line 425
    :cond_2
    iget-boolean v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->acquired:Z

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$600(Lio/netty/channel/pool/FixedChannelPool;)V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->this$0:Lio/netty/channel/pool/FixedChannelPool;

    invoke-static {v0}, Lio/netty/channel/pool/FixedChannelPool;->access$1000(Lio/netty/channel/pool/FixedChannelPool;)V

    .line 431
    :goto_0
    iget-object v0, p0, Lio/netty/channel/pool/FixedChannelPool$AcquireListener;->originalPromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    :goto_1
    return-void
.end method
