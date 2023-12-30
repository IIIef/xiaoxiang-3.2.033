.class public Lio/netty/channel/CombinedChannelDuplexHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "CombinedChannelDuplexHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lio/netty/channel/ChannelInboundHandler;",
        "O::",
        "Lio/netty/channel/ChannelOutboundHandler;",
        ">",
        "Lio/netty/channel/ChannelDuplexHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile handlerAdded:Z

.field private inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

.field private inboundHandler:Lio/netty/channel/ChannelInboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

.field private outboundHandler:Lio/netty/channel/ChannelOutboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/CombinedChannelDuplexHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 49
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->ensureNotSharable()V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->ensureNotSharable()V

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    return-object p0
.end method

.method static synthetic access$100(Lio/netty/channel/CombinedChannelDuplexHandler;)Lio/netty/channel/ChannelOutboundHandler;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-object p0
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 31
    sget-object v0, Lio/netty/channel/CombinedChannelDuplexHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method private checkAdded()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->handlerAdded:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not added to pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-nez v0, :cond_2

    const-string v0, "inboundHandler"

    .line 82
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "outboundHandler"

    .line 85
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    instance-of p1, p1, Lio/netty/channel/ChannelOutboundHandler;

    const-string v0, " to get combined."

    if-nez p1, :cond_1

    .line 92
    instance-of p1, p2, Lio/netty/channel/ChannelInboundHandler;

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outboundHandler must not implement "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/ChannelInboundHandler;

    const-string v1, "ChannelInboundHandler"

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inboundHandler must not implement "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/ChannelOutboundHandler;

    const-string v1, "ChannelOutboundHandler"

    .line 90
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init() can not be invoked if "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CombinedChannelDuplexHandler"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was constructed with non-default constructor."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 285
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2, p3}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 213
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 263
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 318
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2, p3, p4}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p3, p4}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 328
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 233
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelInboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 358
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-direct {v0, p1, v1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V

    iput-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    .line 139
    new-instance v0, Lio/netty/channel/CombinedChannelDuplexHandler$1;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-direct {v0, p0, p1, v1}, Lio/netty/channel/CombinedChannelDuplexHandler$1;-><init>(Lio/netty/channel/CombinedChannelDuplexHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelHandler;)V

    iput-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->handlerAdded:Z

    .line 174
    :try_start_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelInboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 177
    throw p1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() must be invoked before being added to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/channel/ChannelPipeline;

    const-string v1, "ChannelPipeline"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " if "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CombinedChannelDuplexHandler"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was constructed with the default constructor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    .line 186
    throw p1
.end method

.method protected final inboundHandler()Lio/netty/channel/ChannelInboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    return-object v0
.end method

.method protected final init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 70
    iput-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    .line 71
    iput-object p2, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-void
.end method

.method protected final outboundHandler()Lio/netty/channel/ChannelOutboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final removeInboundHandler()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->checkAdded()V

    .line 118
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    return-void
.end method

.method public final removeOutboundHandler()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;->checkAdded()V

    .line 126
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {v0}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->remove()V

    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    iget-boolean p1, p1, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->removed:Z

    if-nez p1, :cond_0

    .line 348
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-interface {p1, v0, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundCtx:Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;

    invoke-virtual {p1, p2, p3}, Lio/netty/channel/CombinedChannelDuplexHandler$DelegatingChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method
