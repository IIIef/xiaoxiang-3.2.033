.class Lio/netty/handler/ssl/SslHandler$6;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$flushFuture:Lio/netty/channel/ChannelFuture;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 2039
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$6;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$6;->val$flushFuture:Lio/netty/channel/ChannelFuture;

    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lio/netty/handler/ssl/SslHandler$6;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2043
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$6;->val$flushFuture:Lio/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2044
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2045
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v2, "{} Last write attempt timed out; force-closing the connection."

    .line 2044
    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2046
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$6;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$6;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    :cond_0
    return-void
.end method
