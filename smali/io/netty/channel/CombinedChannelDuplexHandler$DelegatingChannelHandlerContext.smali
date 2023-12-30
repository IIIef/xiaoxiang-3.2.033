.class Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
.super Ljava/lang/Object;
.source "CombinedChannelDuplexHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/CombinedChannelDuplexHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelegatingChannelHandlerContext"
.end annotation


# instance fields
.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final handler:Lio/netty/channel/ChannelHandler;

.field removed:Z


# direct methods
.method constructor <init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 372
    iput-object p2, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)Lio/netty/channel/ChannelHandlerContext;
    .locals 0

    .line 364
    iget-object p0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method static synthetic access$400(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove0()V

    return-void
.end method

.method private remove0()V
    .locals 4

    .line 607
    iget-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    .line 610
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 612
    new-instance v1, Lio/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    .line 613
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".handlerRemoved() has thrown an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    invoke-virtual {p0, v1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 554
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 456
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 486
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .line 377
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 507
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 461
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 491
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 466
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 497
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 481
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 512
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 471
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 502
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 382
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 414
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelActive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 420
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelInactive()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 438
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 444
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelReadComplete()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 402
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelRegistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 408
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelUnregistered()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 450
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireChannelWritabilityChanged()Lio/netty/channel/ChannelInboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 426
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 432
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public flush()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 533
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .line 392
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->hasAttr(Lio/netty/util/AttributeKey;)Z

    move-result p1

    return p1
.end method

.method public isRemoved()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 574
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 1

    .line 564
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 559
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 569
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 549
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method

.method public read()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 517
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    return-object v0
.end method

.method final remove()V
    .locals 2

    .line 593
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove0()V

    goto :goto_0

    .line 597
    :cond_0
    new-instance v1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext$1;

    invoke-direct {v1, p0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext$1;-><init>(Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 579
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 523
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 528
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 544
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 539
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method
