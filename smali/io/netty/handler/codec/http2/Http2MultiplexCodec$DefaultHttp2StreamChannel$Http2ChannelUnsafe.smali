.class final Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Http2ChannelUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closeInitiated:Z

.field private readEOS:Z

.field private recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

.field final synthetic this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

.field private final unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

.field private writeDoneAndNoFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 796
    const-class v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V
    .locals 2

    .line 796
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Lio/netty/channel/VoidChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/VoidChannelPromise;-><init>(Lio/netty/channel/Channel;Z)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$1;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    return-void
.end method

.method static synthetic access$1300(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$2200(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$2300(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 796
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V
    .locals 1

    .line 934
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    return-void

    .line 950
    :cond_1
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;

    invoke-direct {v0, p0, p2, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$2;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;ZLio/netty/channel/ChannelPromise;)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method private firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 1151
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1155
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, p1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1900(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->isWritable(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->writabilityChanged(Z)V

    .line 1156
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    .line 1160
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_0
    return-void
.end method

.method private invokeLater(Ljava/lang/Runnable;)V
    .locals 2

    .line 986
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 988
    invoke-static {}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$1400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Can\'t invoke task later as EventLoop rejected it"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private safeSetSuccess(Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 968
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    invoke-static {}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$1400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    const-string v1, "Failed to mark a promise as success because it is done already: {}"

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private validateStreamFrame(Lio/netty/handler/codec/http2/Http2StreamFrame;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 4

    .line 1194
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1900(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1197
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must not be set on the frame: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 1187
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2Exception;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    if-ne v0, v1, :cond_0

    .line 1188
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-virtual {v0, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private write0(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 3

    .line 1204
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-object v0
.end method

.method private writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    .line 1165
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1167
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_1

    .line 1169
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->wrapStreamClosedError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 1171
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$2400(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2StreamChannelConfig;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    goto :goto_0

    .line 1177
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 1180
    :cond_2
    :goto_0
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    :goto_1
    return-void
.end method


# virtual methods
.method public beginRead()V
    .locals 2

    .line 994
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2MultiplexCodec$ReadStatus:[I

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1500(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1003
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    goto :goto_0

    .line 999
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    .line 1000
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->doBeginRead()V

    :goto_0
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 859
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 862
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public close(Lio/netty/channel/ChannelPromise;)V
    .locals 4

    .line 872
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeInitiated:Z

    if-eqz v0, :cond_3

    .line 876
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1000(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 879
    :cond_1
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_2

    .line 881
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1000(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    new-instance v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$1;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 890
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeInitiated:Z

    .line 892
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$600(Lio/netty/handler/codec/http2/Http2MultiplexCodec;Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    .line 894
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result v1

    .line 898
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v3

    invoke-interface {v2, v3}, Lio/netty/handler/codec/http2/Http2Connection;->streamMayHaveExisted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 899
    new-instance v2, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/netty/handler/codec/http2/Http2Error;

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;-><init>(Lio/netty/handler/codec/http2/Http2Error;)V

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2ResetFrame;

    move-result-object v2

    .line 900
    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 901
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->flush()V

    .line 904
    :cond_4
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 906
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 910
    :cond_5
    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_6
    :goto_2
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v2, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 916
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1000(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 917
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 919
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public closeForcibly()V
    .locals 1

    .line 924
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 808
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 811
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)V
    .locals 1

    const/4 v0, 0x0

    .line 929
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->fireChannelInactiveAndDeregister(Lio/netty/channel/ChannelPromise;Z)V

    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 867
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method doBeginRead()V
    .locals 3

    .line 1012
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    .line 1018
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    const/4 v2, 0x0

    .line 1021
    :cond_1
    check-cast v0, Lio/netty/handler/codec/http2/Http2Frame;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    .line 1022
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v0, :cond_2

    invoke-interface {v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v0

    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 1023
    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 1025
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$1700(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-nez v0, :cond_4

    .line 1031
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->addChildChannelToReadPendingQueue(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)V

    goto :goto_1

    .line 1033
    :cond_4
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;)V

    goto :goto_1

    .line 1013
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-eqz v0, :cond_6

    .line 1014
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1600(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    :cond_6
    :goto_1
    return-void
.end method

.method doRead0(Lio/netty/handler/codec/http2/Http2Frame;Lio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    const/4 v0, 0x1

    .line 1063
    invoke-interface {p2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 1065
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_0

    .line 1066
    check-cast p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2DataFrame;->initialFlowControlledBytes()I

    move-result p1

    .line 1067
    invoke-interface {p2, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 1068
    invoke-interface {p2, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    if-eqz p1, :cond_1

    .line 1071
    :try_start_0
    iget-boolean p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1900(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->consumeBytes(II)Z

    move-result p1

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1073
    iget-object p2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 1077
    invoke-interface {p2, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 1078
    invoke-interface {p2, p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 1215
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v0, v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$1700(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1220
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v1, v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->flush0(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    .line 1223
    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 825
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method notifyReadComplete(Lio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 2

    .line 1044
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1500(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    if-ne v0, v1, :cond_0

    .line 1045
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1502(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    .line 1049
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 1050
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 1054
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->flush()V

    .line 1055
    iget-boolean p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    if-eqz p1, :cond_1

    .line 1056
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$1600(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->closeForcibly()V

    :cond_1
    return-void
.end method

.method public outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method readEOS()V
    .locals 1

    const/4 v0, 0x1

    .line 1039
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->readEOS:Z

    return-void
.end method

.method public recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 2

    .line 816
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 818
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->recvHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    return-object v0
.end method

.method public register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V
    .locals 3

    .line 835
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 838
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$700(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 842
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$702(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 844
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$800(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 846
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    iget-object v2, v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->this$0:Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$900(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)Lio/netty/channel/ChannelHandler;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 849
    :cond_1
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 851
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRegistered()Lio/netty/channel/ChannelPipeline;

    .line 852
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 853
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    :cond_2
    return-void

    .line 839
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Re-register is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 830
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 1228
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 4

    .line 1085
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    .line 1092
    invoke-static {v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-nez v0, :cond_7

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2DataFrame;

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    .line 1099
    :try_start_0
    instance-of v1, p1, Lio/netty/handler/codec/http2/Http2StreamFrame;

    if-eqz v1, :cond_6

    .line 1100
    move-object v1, p1

    check-cast v1, Lio/netty/handler/codec/http2/Http2StreamFrame;

    invoke-direct {p0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->validateStreamFrame(Lio/netty/handler/codec/http2/Http2StreamFrame;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http2/Http2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;

    move-result-object v1

    .line 1101
    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$2100(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v2

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2CodecUtil;->isStreamIdValid(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1102
    instance-of p1, v1, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    if-nez p1, :cond_2

    .line 1103
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The first frame must be a headers frame. Was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2StreamFrame;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1104
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    return-void

    .line 1109
    :cond_2
    :try_start_1
    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->this$1:Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;

    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;->access$2102(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel;Z)Z

    .line 1110
    invoke-direct {p0, v1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->write0(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 1111
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->firstWriteComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 1114
    :cond_3
    new-instance v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;

    invoke-direct {v1, p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$3;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    return-void

    .line 1132
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->write0(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 1133
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1134
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeComplete(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    .line 1136
    :cond_5
    new-instance v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$4;

    invoke-direct {v1, p0, p2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe$4;-><init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 1124
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1126
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message must be an "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lio/netty/handler/codec/http2/Http2StreamFrame;

    .line 1127
    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1126
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    return-void

    :catchall_0
    move-exception p1

    .line 1144
    :try_start_3
    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1146
    :goto_1
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    return-void

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$DefaultHttp2StreamChannel$Http2ChannelUnsafe;->writeDoneAndNoFlush:Z

    .line 1147
    throw p1

    .line 1093
    :cond_7
    :goto_2
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 1094
    invoke-static {}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->access$2000()Ljava/nio/channels/ClosedChannelException;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-void
.end method
