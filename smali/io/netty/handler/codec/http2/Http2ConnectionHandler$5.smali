.class Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;
.super Ljava/lang/Object;
.source "Http2ConnectionHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2ConnectionHandler;->goAway(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$debugData:Lio/netty/buffer/ByteBuf;

.field final synthetic val$errorCode:J

.field final synthetic val$lastStreamId:I


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->this$0:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput p3, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$lastStreamId:I

    iput-wide p4, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$errorCode:J

    iput-object p6, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$debugData:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget v1, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$lastStreamId:I

    iget-wide v2, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$errorCode:J

    iget-object v4, p0, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->val$debugData:Lio/netty/buffer/ByteBuf;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->access$1100(Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 832
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler$5;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
