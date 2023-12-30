.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$1;
.super Lio/netty/channel/DefaultChannelPipeline;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field final synthetic val$this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/channel/Channel;Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$1;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$1;->val$this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-direct {p0, p2}, Lio/netty/channel/DefaultChannelPipeline;-><init>(Lio/netty/channel/Channel;)V

    return-void
.end method


# virtual methods
.method protected decrementPendingOutboundBytes(J)V
    .locals 0

    return-void
.end method

.method protected incrementPendingOutboundBytes(J)V
    .locals 0

    return-void
.end method
