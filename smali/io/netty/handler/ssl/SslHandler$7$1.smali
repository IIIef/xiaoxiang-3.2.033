.class Lio/netty/handler/ssl/SslHandler$7$1;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler$7;->operationComplete(Lio/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/handler/ssl/SslHandler$7;

.field final synthetic val$closeNotifyReadTimeout:J


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler$7;J)V
    .locals 0

    .line 2074
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iput-wide p2, p0, Lio/netty/handler/ssl/SslHandler$7$1;->val$closeNotifyReadTimeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2077
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$7;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$2700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iget-object v1, v1, Lio/netty/handler/ssl/SslHandler$7;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 2080
    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iget-wide v2, p0, Lio/netty/handler/ssl/SslHandler$7$1;->val$closeNotifyReadTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "{} did not receive close_notify in {}ms; force-closing the connection."

    .line 2078
    invoke-interface {v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2083
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iget-object v0, v0, Lio/netty/handler/ssl/SslHandler$7;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iget-object v1, v1, Lio/netty/handler/ssl/SslHandler$7;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$7$1;->this$1:Lio/netty/handler/ssl/SslHandler$7;

    iget-object v1, v1, Lio/netty/handler/ssl/SslHandler$7;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$2500(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    :cond_0
    return-void
.end method
