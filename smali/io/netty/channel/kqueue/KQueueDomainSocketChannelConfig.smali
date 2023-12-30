.class public final Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
.super Lio/netty/channel/kqueue/KQueueChannelConfig;
.source "KQueueDomainSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/unix/DomainSocketChannelConfig;


# instance fields
.field private volatile allowHalfClosure:Z

.field private volatile mode:Lio/netty/channel/unix/DomainSocketReadMode;


# direct methods
.method constructor <init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 35
    sget-object p1, Lio/netty/channel/unix/DomainSocketReadMode;->BYTES:Lio/netty/channel/unix/DomainSocketReadMode;

    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->mode:Lio/netty/channel/unix/DomainSocketReadMode;

    return-void
.end method


# virtual methods
.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 50
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->DOMAIN_SOCKET_READ_MODE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->getReadMode()Lio/netty/channel/unix/DomainSocketReadMode;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->isAllowHalfClosure()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-super {p0}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    sget-object v2, Lio/netty/channel/unix/UnixChannelOption;->DOMAIN_SOCKET_READ_MODE:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReadMode()Lio/netty/channel/unix/DomainSocketReadMode;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->mode:Lio/netty/channel/unix/DomainSocketReadMode;

    return-object v0
.end method

.method public isAllowHalfClosure()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->allowHalfClosure:Z

    return v0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAllowHalfClosure(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->allowHalfClosure:Z

    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lio/netty/channel/unix/UnixChannelOption;->DOMAIN_SOCKET_READ_MODE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 64
    check-cast p2, Lio/netty/channel/unix/DomainSocketReadMode;

    invoke-virtual {p0, p2}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setReadMode(Lio/netty/channel/unix/DomainSocketReadMode;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 66
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_1
    invoke-super {p0, p1, p2}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRcvAllocTransportProvidesGuess(Z)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public setReadMode(Lio/netty/channel/unix/DomainSocketReadMode;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 1

    const-string v0, "mode"

    .line 152
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->mode:Lio/netty/channel/unix/DomainSocketReadMode;

    return-object p0
.end method

.method public bridge synthetic setReadMode(Lio/netty/channel/unix/DomainSocketReadMode;)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setReadMode(Lio/netty/channel/unix/DomainSocketReadMode;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lio/netty/channel/kqueue/KQueueChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueChannelConfig;

    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/unix/DomainSocketChannelConfig;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method
