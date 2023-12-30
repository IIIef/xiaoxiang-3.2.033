.class Lio/netty/handler/ssl/AbstractSniHandler$1;
.super Ljava/lang/Object;
.source "AbstractSniHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/AbstractSniHandler;->select(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/AbstractSniHandler;

.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$hostname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->access$002(Lio/netty/handler/ssl/AbstractSniHandler;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v3, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$hostname:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lio/netty/handler/ssl/AbstractSniHandler;->access$100(Lio/netty/handler/ssl/AbstractSniHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V

    .line 239
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v3, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$hostname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lio/netty/handler/ssl/AbstractSniHandler;->onLookupComplete(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;Lio/netty/util/concurrent/Future;)V
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 245
    :try_start_2
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v2, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 241
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    :goto_0
    iget-object p1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    invoke-static {p1}, Lio/netty/handler/ssl/AbstractSniHandler;->access$200(Lio/netty/handler/ssl/AbstractSniHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    invoke-static {p1, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->access$202(Lio/netty/handler/ssl/AbstractSniHandler;Z)Z

    .line 250
    iget-object p1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 248
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/AbstractSniHandler;->access$200(Lio/netty/handler/ssl/AbstractSniHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->this$0:Lio/netty/handler/ssl/AbstractSniHandler;

    invoke-static {v1, v0}, Lio/netty/handler/ssl/AbstractSniHandler;->access$202(Lio/netty/handler/ssl/AbstractSniHandler;Z)Z

    .line 250
    iget-object v0, p0, Lio/netty/handler/ssl/AbstractSniHandler$1;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 252
    :cond_1
    throw p1
.end method
