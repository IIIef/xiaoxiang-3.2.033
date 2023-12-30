.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Http2StreamChannelConfig"
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/channel/Channel;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 1245
    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method public getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
    .locals 1

    .line 1260
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;->INSTANCE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$FlowControlledFrameSizeEstimator;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 2

    .line 1250
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$2500(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 2

    .line 1255
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$2500(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;
    .locals 2

    .line 1265
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    .line 1266
    new-instance v1, Lio/netty/channel/WriteBufferWaterMark;

    invoke-direct {v1, v0, v0}, Lio/netty/channel/WriteBufferWaterMark;-><init>(II)V

    return-object v1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 2

    .line 1293
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    if-eqz v0, :cond_0

    .line 1297
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    return-object p0

    .line 1294
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allocator.newHandle() must return an object of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1283
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 1288
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
