.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
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

    .line 881
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 884
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 881
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
