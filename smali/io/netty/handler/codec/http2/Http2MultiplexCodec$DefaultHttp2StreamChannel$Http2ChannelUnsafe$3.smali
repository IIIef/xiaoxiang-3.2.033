.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2

    .line 1117
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, p1, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->access$2200(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1114
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
