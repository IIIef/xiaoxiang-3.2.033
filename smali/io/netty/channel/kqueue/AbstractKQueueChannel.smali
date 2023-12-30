.class abstract Lio/netty/channel/kqueue/AbstractKQueueChannel;
.super Lio/netty/channel/AbstractChannel;
.source "AbstractKQueueChannel.java"

# interfaces
.implements Lio/netty/channel/unix/UnixChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
    }
.end annotation


# static fields
.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# instance fields
.field protected volatile active:Z

.field private connectPromise:Lio/netty/channel/ChannelPromise;

.field private connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field inputClosedSeenErrorOnRead:Z

.field private volatile local:Ljava/net/SocketAddress;

.field private readFilterEnabled:Z

.field readReadyRunnablePending:Z

.field private volatile remote:Ljava/net/SocketAddress;

.field private requestedRemoteAddress:Ljava/net/SocketAddress;

.field final socket:Lio/netty/channel/kqueue/BsdSocket;

.field private writeFilterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Ljava/net/SocketAddress;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    const-string p1, "fd"

    .line 90
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/kqueue/BsdSocket;

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    .line 94
    iput-object p3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 95
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    const-string p1, "fd"

    .line 78
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/kqueue/BsdSocket;

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 79
    iput-boolean p3, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    .line 84
    invoke-virtual {p2}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 57
    iget-object p0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p0
.end method

.method static synthetic access$002(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromise;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectPromise:Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method static synthetic access$100(Lio/netty/channel/ChannelConfig;)Z
    .locals 0

    .line 57
    invoke-static {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/net/SocketAddress;
    .locals 0

    .line 57
    iget-object p0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic access$302(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$400(Lio/netty/channel/kqueue/AbstractKQueueChannel;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 57
    iget-object p0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$402(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->connectTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$502(Lio/netty/channel/kqueue/AbstractKQueueChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    return-object p1
.end method

.method protected static checkResolvable(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 240
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance p0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {p0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw p0
.end method

.method private doConnect0(Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 702
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 704
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 710
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    .line 712
    throw p1
.end method

.method private evSet(SS)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1, p2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    :cond_0
    return-void
.end method

.method private evSet0(SS)V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    return-void
.end method

.method private evSet0(SSI)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/netty/channel/kqueue/KQueueEventLoop;->evSet(Lio/netty/channel/kqueue/AbstractKQueueChannel;SSI)V

    return-void
.end method

.method private static isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z
    .locals 1

    .line 289
    instance-of v0, p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    if-eqz v0, :cond_0

    .line 290
    check-cast p0, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;

    invoke-virtual {p0}, Lio/netty/channel/kqueue/KQueueDomainSocketChannelConfig;->isAllowHalfClosure()Z

    move-result p0

    return p0

    .line 293
    :cond_0
    instance-of v0, p0, Lio/netty/channel/socket/SocketChannelConfig;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/channel/socket/SocketChannelConfig;

    .line 294
    invoke-interface {p0}, Lio/netty/channel/socket/SocketChannelConfig;->isAllowHalfClosure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSoErrorZero(Lio/netty/channel/kqueue/BsdSocket;)Z
    .locals 1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->getSoError()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 102
    new-instance v0, Lio/netty/channel/ChannelException;

    invoke-direct {v0, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 233
    invoke-interface {p2, p3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    .line 234
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 235
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method final clearReadFilter()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    .line 302
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->clearReadFilter0()V

    goto :goto_0

    .line 306
    :cond_0
    new-instance v2, Lio/netty/channel/kqueue/AbstractKQueueChannel$1;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$1;-><init>(Lio/netty/channel/kqueue/AbstractKQueueChannel;Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;)V

    invoke-interface {v0, v2}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public abstract config()Lio/netty/channel/kqueue/KQueueChannelConfig;
.end method

.method protected final doBeginRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->readPending:Z

    .line 164
    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilter(Z)V

    .line 168
    iget-boolean v1, v0, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->maybeMoreDataToRead:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;->executeReadReadyRunnable(Lio/netty/channel/ChannelConfig;)V

    :cond_0
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 655
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 656
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->bind(Ljava/net/SocketAddress;)V

    .line 659
    iget-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p1}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    .line 127
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->close()V

    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 666
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 667
    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 670
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 673
    invoke-static {v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->checkResolvable(Ljava/net/InetSocketAddress;)V

    .line 676
    :cond_2
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    if-nez v1, :cond_6

    if-eqz p2, :cond_3

    .line 684
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1, p2}, Lio/netty/channel/kqueue/BsdSocket;->bind(Ljava/net/SocketAddress;)V

    .line 687
    :cond_3
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doConnect0(Ljava/net/SocketAddress;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 689
    :cond_4
    iget-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    .line 690
    invoke-virtual {p1}, Lio/netty/channel/kqueue/BsdSocket;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/UnixChannelUtil;->computeRemoteAddr(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    .line 695
    :cond_5
    iget-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p1}, Lio/netty/channel/kqueue/BsdSocket;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    return p2

    .line 680
    :cond_6
    new-instance p1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {p1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw p1
.end method

.method protected doDeregister()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilter(Z)V

    .line 149
    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilter(Z)V

    .line 150
    sget-short v1, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    sget-short v2, Lio/netty/channel/kqueue/Native;->EV_DELETE:S

    invoke-direct {p0, v1, v2, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    .line 152
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->remove(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->doClose()V

    return-void
.end method

.method protected final doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 251
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v2

    invoke-interface {v1, v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->attemptedBytesRead(I)V

    .line 252
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/netty/channel/kqueue/BsdSocket;->readAddress(JII)I

    move-result v1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lio/netty/channel/kqueue/BsdSocket;->read(Ljava/nio/ByteBuffer;II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    add-int/2addr v0, v1

    .line 259
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    :cond_1
    return v1
.end method

.method protected doRegister()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readReadyRunnablePending:Z

    .line 180
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/channel/kqueue/KQueueEventLoop;

    invoke-virtual {v0, p0}, Lio/netty/channel/kqueue/KQueueEventLoop;->add(Lio/netty/channel/kqueue/AbstractKQueueChannel;)V

    .line 183
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 184
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    .line 186
    :cond_0
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    if-eqz v0, :cond_1

    .line 187
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    invoke-direct {p0, v0, v1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SS)V

    .line 189
    :cond_1
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ADD:S

    sget v2, Lio/netty/channel/kqueue/Native;->NOTE_RDHUP:I

    invoke-direct {p0, v0, v1, v2}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet0(SSI)V

    return-void
.end method

.method protected final doWriteBytes(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/buffer/ByteBuf;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p2

    invoke-virtual {v0, v2, v3, v4, p2}, Lio/netty/channel/kqueue/BsdSocket;->writeAddress(JII)I

    move-result p2

    if-lez p2, :cond_2

    int-to-long v2, p2

    .line 268
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    return v1

    .line 272
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 273
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 274
    :goto_0
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Lio/netty/channel/kqueue/BsdSocket;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-lez v0, :cond_2

    .line 276
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v2, v0

    .line 277
    invoke-virtual {p1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->removeBytes(J)V

    return v1

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method

.method public final fd()Lio/netty/channel/unix/FileDescriptor;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->active:Z

    return v0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 0

    .line 137
    instance-of p1, p1, Lio/netty/channel/kqueue/KQueueEventLoop;

    return p1
.end method

.method public isOpen()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 717
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->local:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 118
    sget-object v0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected final newDirectBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected final newDirectBuffer(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 211
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 214
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 222
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    if-nez v2, :cond_2

    .line 224
    invoke-static {p1, p2, v1, v0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newDirectBuffer0(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    .line 227
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v2, p2, v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 228
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newUnsafe()Lio/netty/channel/kqueue/AbstractKQueueChannel$AbstractKQueueUnsafe;
.end method

.method readFilter(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 325
    iput-boolean p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->readFilterEnabled:Z

    .line 326
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    if-eqz p1, :cond_0

    sget-short p1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    goto :goto_0

    :cond_0
    sget-short p1, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    :goto_0
    invoke-direct {p0, v0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet(SS)V

    :cond_1
    return-void
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 722
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->remote:Ljava/net/SocketAddress;

    return-object v0
.end method

.method final shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->inputClosedSeenErrorOnRead:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->isAllowHalfClosure(Lio/netty/channel/ChannelConfig;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method writeFilter(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-boolean v0, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    if-eq v0, p1, :cond_1

    .line 332
    iput-boolean p1, p0, Lio/netty/channel/kqueue/AbstractKQueueChannel;->writeFilterEnabled:Z

    .line 333
    sget-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    if-eqz p1, :cond_0

    sget-short p1, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    goto :goto_0

    :cond_0
    sget-short p1, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    :goto_0
    invoke-direct {p0, v0, p1}, Lio/netty/channel/kqueue/AbstractKQueueChannel;->evSet(SS)V

    :cond_1
    return-void
.end method
