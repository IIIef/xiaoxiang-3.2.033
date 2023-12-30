.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$Http2MultiplexCodecStream;
.super Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Http2MultiplexCodecStream"
.end annotation


# instance fields
.field channel:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;-><init>()V

    return-void
.end method
