.class Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

.field final synthetic val$fireChannelInactive:Z

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;ZLio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iput-boolean p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->val$fireChannelInactive:Z

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 953
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->val$fireChannelInactive:Z

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1200(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelInactive()Lio/netty/channel/ChannelPipeline;

    .line 958
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$702(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 960
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1200(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelUnregistered()Lio/netty/channel/ChannelPipeline;

    .line 962
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->this$2:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->access$1300(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
