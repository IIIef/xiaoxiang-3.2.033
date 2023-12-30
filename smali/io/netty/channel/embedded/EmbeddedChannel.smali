.class public Lio/netty/channel/embedded/EmbeddedChannel;
.super Lio/netty/channel/AbstractChannel;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;,
        Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;,
        Lio/netty/channel/embedded/EmbeddedChannel$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

.field private static final LOCAL_ADDRESS:Ljava/net/SocketAddress;

.field private static final METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

.field private static final METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

.field private static final REMOTE_ADDRESS:Ljava/net/SocketAddress;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/ChannelConfig;

.field private inboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Ljava/lang/Throwable;

.field private final loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

.field private final metadata:Lio/netty/channel/ChannelMetadata;

.field private outboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

.field private state:Lio/netty/channel/embedded/EmbeddedChannel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->LOCAL_ADDRESS:Ljava/net/SocketAddress;

    .line 52
    new-instance v0, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->REMOTE_ADDRESS:Ljava/net/SocketAddress;

    const/4 v0, 0x0

    new-array v1, v0, [Lio/netty/channel/ChannelHandler;

    .line 54
    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    .line 57
    const-class v1, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 59
    new-instance v1, Lio/netty/channel/ChannelMetadata;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v1, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    .line 60
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>([Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelId;)V
    .locals 1

    .line 91
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;)V

    .line 62
    new-instance p1, Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-direct {p1}, Lio/netty/channel/embedded/EmbeddedEventLoop;-><init>()V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    .line 63
    new-instance p1, Lio/netty/channel/embedded/EmbeddedChannel$1;

    invoke-direct {p1, p0}, Lio/netty/channel/embedded/EmbeddedChannel$1;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    .line 183
    invoke-static {p2}, Lio/netty/channel/embedded/EmbeddedChannel;->metadata(Z)Lio/netty/channel/ChannelMetadata;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    const-string p1, "config"

    .line 184
    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelConfig;

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    const/4 p1, 0x1

    .line 185
    invoke-direct {p0, p1, p4}, Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;)V

    .line 62
    new-instance p1, Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-direct {p1}, Lio/netty/channel/embedded/EmbeddedEventLoop;-><init>()V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    .line 63
    new-instance p1, Lio/netty/channel/embedded/EmbeddedChannel$1;

    invoke-direct {p1, p0}, Lio/netty/channel/embedded/EmbeddedChannel$1;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    .line 165
    invoke-static {p3}, Lio/netty/channel/embedded/EmbeddedChannel;->metadata(Z)Lio/netty/channel/ChannelMetadata;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    .line 166
    new-instance p1, Lio/netty/channel/DefaultChannelConfig;

    invoke-direct {p1, p0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 167
    invoke-direct {p0, p2, p4}, Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    .line 124
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZZ[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lio/netty/channel/ChannelHandler;)V
    .locals 1

    .line 111
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1, p2}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;Z[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method public varargs constructor <init>([Lio/netty/channel/ChannelHandler;)V
    .locals 1

    .line 100
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    invoke-direct {p0, v0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;[Lio/netty/channel/ChannelHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/embedded/EmbeddedChannel;Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 624
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 626
    iput-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 628
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 632
    :cond_0
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1

    .line 635
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    return-object p1
.end method

.method private checkOpen(Z)Z
    .locals 1

    .line 650
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 652
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private finish(Z)Z
    .locals 1

    .line 485
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 488
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 491
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 492
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 491
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 492
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    .line 494
    :cond_3
    throw v0
.end method

.method private finishPendingTasks(Z)V
    .locals 0

    .line 528
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {p1}, Lio/netty/channel/embedded/EmbeddedEventLoop;->cancelScheduledTasks()V

    :cond_0
    return-void
.end method

.method private flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 368
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 371
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method private flushOutbound0()V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 456
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flush()Lio/netty/channel/Channel;

    return-void
.end method

.method private static isNotEmpty(Ljava/util/Queue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 565
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static metadata(Z)Lio/netty/channel/ChannelMetadata;
    .locals 0

    if-eqz p0, :cond_0

    .line 189
    sget-object p0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    goto :goto_0

    :cond_0
    sget-object p0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA_NO_DISCONNECT:Lio/netty/channel/ChannelMetadata;

    :goto_0
    return-object p0
.end method

.method private static poll(Ljava/util/Queue;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 569
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private recordException(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    .line 605
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private recordException(Ljava/lang/Throwable;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 612
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    goto :goto_0

    .line 614
    :cond_0
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "More than one exception was raised. Will report only the first one and log others."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static releaseAll(Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 514
    invoke-static {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 520
    :cond_0
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private varargs setup(Z[Lio/netty/channel/ChannelHandler;)V
    .locals 3

    const-string v0, "handlers"

    .line 193
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    .line 195
    new-instance v2, Lio/netty/channel/embedded/EmbeddedChannel$2;

    invoke-direct {v2, p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel$2;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;[Lio/netty/channel/ChannelHandler;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {p1, p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkException()V
    .locals 1

    .line 642
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public final close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 549
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 550
    invoke-super {p0, p1}, Lio/netty/channel/AbstractChannel;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    const/4 v0, 0x1

    .line 553
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishPendingTasks(Z)V

    return-object p1
.end method

.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 237
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    return-object v0
.end method

.method public final disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public final disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 559
    invoke-super {p0, p1}, Lio/netty/channel/AbstractChannel;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    invoke-virtual {v0}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finishPendingTasks(Z)V

    return-object p1
.end method

.method protected doBeginRead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 703
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    return-void
.end method

.method protected doDisconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    invoke-virtual {v0}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->doClose()V

    :cond_0
    return-void
.end method

.method protected doRegister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 686
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 724
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    invoke-virtual {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->handleOutboundMessage(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0
.end method

.method protected final ensureOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 664
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    :cond_0
    return-void
.end method

.method public finish()Z
    .locals 1

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish(Z)Z

    move-result v0

    return v0
.end method

.method public finishAndReleaseAll()Z
    .locals 1

    const/4 v0, 0x1

    .line 475
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->finish(Z)Z

    move-result v0

    return v0
.end method

.method public flushInbound()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 2

    .line 361
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-object p0
.end method

.method public flushOutbound()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 1

    const/4 v0, 0x1

    .line 444
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flushOutbound0()V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-object p0
.end method

.method protected handleInboundMessage(Ljava/lang/Object;)V
    .locals 1

    .line 748
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected handleOutboundMessage(Ljava/lang/Object;)V
    .locals 1

    .line 741
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public inboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    .line 257
    :cond_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v1, Lio/netty/channel/embedded/EmbeddedChannel$State;->ACTIVE:Lio/netty/channel/embedded/EmbeddedChannel$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 0

    .line 671
    instance-of p1, p1, Lio/netty/channel/embedded/EmbeddedEventLoop;

    return p1
.end method

.method public isOpen()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:Lio/netty/channel/embedded/EmbeddedChannel$State;

    sget-object v1, Lio/netty/channel/embedded/EmbeddedChannel$State;->CLOSED:Lio/netty/channel/embedded/EmbeddedChannel$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastInboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public lastOutboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->LOCAL_ADDRESS:Ljava/net/SocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 232
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->metadata:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newChannelPipeline()Lio/netty/channel/DefaultChannelPipeline;
    .locals 1

    .line 227
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;

    invoke-direct {v0, p0, p0}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedChannelPipeline;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .line 713
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$1;)V

    return-object v0
.end method

.method public outboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    .line 275
    :cond_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public readInbound()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->poll(Ljava/util/Queue;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Caller of readInbound() will handle the message from this point"

    .line 293
    invoke-static {v0, v1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public readOutbound()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->poll(Ljava/util/Queue;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Caller of readOutbound() will handle the message from this point."

    .line 305
    invoke-static {v0, v1}, Lio/netty/util/ReferenceCountUtil;->touch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public releaseInbound()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    move-result v0

    return v0
.end method

.method public releaseOutbound()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->releaseAll(Ljava/util/Queue;)Z

    move-result v0

    return v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->REMOTE_ADDRESS:Ljava/net/SocketAddress;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public runPendingTasks()V
    .locals 1

    .line 578
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runTasks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 580
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 584
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runScheduledTasks()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 586
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public runScheduledPendingTasks()J
    .locals 2

    .line 597
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runScheduledTasks()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 599
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 600
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->nextScheduledTask()J

    move-result-wide v0

    return-wide v0
.end method

.method public unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    .line 718
    invoke-super {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;

    iget-object v0, v0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->wrapped:Lio/netty/channel/Channel$Unsafe;

    return-object v0
.end method

.method public varargs writeInbound([Ljava/lang/Object;)Z
    .locals 5

    .line 318
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 319
    array-length v0, p1

    if-nez v0, :cond_0

    .line 320
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result p1

    return p1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 324
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 325
    invoke-interface {v0, v4}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->flushInbound(ZLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 329
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result p1

    return p1
.end method

.method public writeOneInbound(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOneInbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeOneInbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 352
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeOneOutbound(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->writeOneOutbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public writeOneOutbound(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x1

    .line 432
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkOpen(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1

    .line 435
    :cond_0
    invoke-direct {p0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs writeOutbound([Ljava/lang/Object;)Z
    .locals 5

    .line 381
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 382
    array-length v0, p1

    if-nez v0, :cond_0

    .line 383
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result p1

    return p1

    .line 386
    :cond_0
    array-length v0, p1

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    .line 388
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0, v4}, Lio/netty/channel/embedded/EmbeddedChannel;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flushOutbound0()V

    .line 397
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_4

    .line 399
    invoke-virtual {v0, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelFuture;

    .line 400
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    invoke-direct {p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Lio/netty/channel/ChannelFuture;)V

    goto :goto_3

    .line 404
    :cond_3
    iget-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->recordExceptionListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 408
    :cond_4
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 409
    iget-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-static {p1}, Lio/netty/channel/embedded/EmbeddedChannel;->isNotEmpty(Ljava/util/Queue;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 412
    throw p1
.end method
