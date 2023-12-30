.class Lio/netty/handler/stream/ChunkedWriteHandler$2;
.super Ljava/lang/Object;
.source "ChunkedWriteHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/stream/ChunkedWriteHandler;

.field final synthetic val$chunks:Lio/netty/handler/stream/ChunkedInput;

.field final synthetic val$currentWrite:Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;


# direct methods
.method constructor <init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedInput;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->this$0:Lio/netty/handler/stream/ChunkedWriteHandler;

    iput-object p2, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$chunks:Lio/netty/handler/stream/ChunkedInput;

    iput-object p3, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$currentWrite:Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$chunks:Lio/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->access$100(Lio/netty/handler/stream/ChunkedInput;)V

    .line 290
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$currentWrite:Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$chunks:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {p1}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v0

    .line 294
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$chunks:Lio/netty/handler/stream/ChunkedInput;

    invoke-interface {p1}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v2

    .line 295
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$chunks:Lio/netty/handler/stream/ChunkedInput;

    invoke-static {p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->access$100(Lio/netty/handler/stream/ChunkedInput;)V

    .line 296
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$currentWrite:Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 297
    iget-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler$2;->val$currentWrite:Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-virtual {p1, v2, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
