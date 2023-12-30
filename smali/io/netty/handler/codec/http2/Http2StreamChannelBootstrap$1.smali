.class Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;
.super Ljava/lang/Object;
.source "Http2StreamChannelBootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->this$0:Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap$1;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open0(Lio/netty/channel/ChannelHandlerContext;Lio/netty/util/concurrent/Promise;)V

    return-void
.end method
