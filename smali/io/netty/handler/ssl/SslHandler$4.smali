.class Lio/netty/handler/ssl/SslHandler$4;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->applyHandshakeTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$localHandshakePromise:Lio/netty/util/concurrent/Promise;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 1985
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$4;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$4;->val$localHandshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1988
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$4;->val$localHandshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1992
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$4;->val$localHandshakePromise:Lio/netty/util/concurrent/Promise;

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2200()Ljavax/net/ssl/SSLException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1993
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$4;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$600(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2200()Ljavax/net/ssl/SSLException;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/netty/handler/ssl/SslUtils;->handleHandshakeFailure(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$4;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2200()Ljavax/net/ssl/SSLException;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$2300(Lio/netty/handler/ssl/SslHandler;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$4;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {}, Lio/netty/handler/ssl/SslHandler;->access$2200()Ljavax/net/ssl/SSLException;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$2300(Lio/netty/handler/ssl/SslHandler;Ljava/lang/Throwable;)V

    .line 1997
    throw v0
.end method
