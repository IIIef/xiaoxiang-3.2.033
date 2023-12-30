.class public Lio/netty/channel/unix/Socket;
.super Lio/netty/channel/unix/FileDescriptor;
.source "Socket.java"


# static fields
.field private static final CONNECTION_RESET_EXCEPTION_SENDMSG:Lio/netty/channel/unix/Errors$NativeIoException;

.field private static final CONNECTION_RESET_SHUTDOWN_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

.field private static final CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

.field private static final FINISH_CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

.field private static final INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SEND_TO_ADDRESSES_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SEND_TO_ADDRESS_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SEND_TO_ADDRESS_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

.field private static final SEND_TO_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SEND_TO_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

.field private static final SHUTDOWN_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field public static final UDS_SUN_PATH_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    const-class v0, Lio/netty/channel/unix/Socket;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v2, "shutdown(..)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SHUTDOWN_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 51
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v2, "sendTo(..)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SEND_TO_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 53
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v3, "sendToAddress(..)"

    .line 54
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESS_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 55
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v3, "sendToAddresses(..)"

    .line 56
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESSES_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 57
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v4, "syscall:sendto"

    .line 58
    invoke-static {v4, v1}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    .line 57
    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/Errors$NativeIoException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SEND_TO_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 60
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    .line 61
    invoke-static {v4, v1}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    const-string v2, "sendToAddress"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/Errors$NativeIoException;

    sput-object v1, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESS_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 63
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v2, "syscall:sendmsg"

    .line 64
    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    .line 63
    invoke-static {v1, v0, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/Errors$NativeIoException;

    sput-object v1, Lio/netty/channel/unix/Socket;->CONNECTION_RESET_EXCEPTION_SENDMSG:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 66
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_ECONNRESET_NEGATIVE:I

    const-string v2, "syscall:shutdown"

    .line 67
    invoke-static {v2, v1}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    const-string v2, "shutdown"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/Errors$NativeIoException;

    sput-object v1, Lio/netty/channel/unix/Socket;->CONNECTION_RESET_SHUTDOWN_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 69
    new-instance v1, Lio/netty/channel/unix/Errors$NativeConnectException;

    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    const-string v3, "syscall:getsockopt"

    invoke-direct {v1, v3, v2}, Lio/netty/channel/unix/Errors$NativeConnectException;-><init>(Ljava/lang/String;I)V

    const-string v2, "finishConnect(..)"

    .line 70
    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/Errors$NativeConnectException;

    sput-object v1, Lio/netty/channel/unix/Socket;->FINISH_CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

    .line 72
    new-instance v1, Lio/netty/channel/unix/Errors$NativeConnectException;

    sget v2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    const-string v3, "syscall:connect"

    invoke-direct {v1, v3, v2}, Lio/netty/channel/unix/Errors$NativeConnectException;-><init>(Ljava/lang/String;I)V

    const-string v2, "connect(..)"

    .line 73
    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/channel/unix/Errors$NativeConnectException;

    sput-object v0, Lio/netty/channel/unix/Socket;->CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

    .line 76
    invoke-static {}, Lio/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->udsSunPathSize()I

    move-result v0

    sput v0, Lio/netty/channel/unix/Socket;->UDS_SUN_PATH_SIZE:I

    .line 416
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lio/netty/channel/unix/Socket;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-void
.end method

.method private static native accept(I[B)I
.end method

.method private static native bind(I[BII)I
.end method

.method private static native bindDomainSocket(I[B)I
.end method

.method private static native connect(I[BII)I
.end method

.method private static native connectDomainSocket(I[B)I
.end method

.method private static native disconnect(I)I
.end method

.method private static native finishConnect(I)I
.end method

.method private static native getReceiveBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSendBufferSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoError(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoLinger(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTrafficClass(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static initialize()V
    .locals 3

    .line 431
    sget-object v0, Lio/netty/channel/unix/Socket;->INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->initialize(Z)V

    :cond_0
    return-void
.end method

.method private static native initialize(Z)V
.end method

.method private static native isBroadcast(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isKeepAlive(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReuseAddress(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isReusePort(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpNoDelay(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native listen(II)I
.end method

.method private static native localAddress(I)[B
.end method

.method public static newSocketDgram()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 423
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDgram0()I
    .locals 3

    .line 445
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDgramFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 447
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDgram"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDgramFd()I
.end method

.method public static newSocketDomain()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 427
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketDomain0()I
    .locals 3

    .line 453
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketDomainFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 455
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketDomain"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketDomainFd()I
.end method

.method public static newSocketStream()Lio/netty/channel/unix/Socket;
    .locals 2

    .line 419
    new-instance v0, Lio/netty/channel/unix/Socket;

    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-object v0
.end method

.method protected static newSocketStream0()I
    .locals 3

    .line 437
    invoke-static {}, Lio/netty/channel/unix/Socket;->newSocketStreamFd()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 439
    :cond_0
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "newSocketStream"

    invoke-static {v2, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native newSocketStreamFd()I
.end method

.method private static native recvFd(I)I
.end method

.method private static native recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remoteAddress(I)[B
.end method

.method private static native sendFd(II)I
.end method

.method private static native sendTo(ILjava/nio/ByteBuffer;II[BII)I
.end method

.method private static native sendToAddress(IJII[BII)I
.end method

.method private static native sendToAddresses(IJI[BII)I
.end method

.method private static native setBroadcast(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setKeepAlive(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReceiveBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReuseAddress(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setReusePort(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSendBufferSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoLinger(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoDelay(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTrafficClass(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native shutdown(IZZ)I
.end method


# virtual methods
.method public final accept([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->accept(I[B)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 312
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "accept"

    .line 316
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    const-string v1, "bind"

    if-eqz v0, :cond_1

    .line 283
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 284
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 285
    iget v2, p0, Lio/netty/channel/unix/Socket;->fd:I

    iget-object v3, v0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v0, v0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v2, v3, v0, p1}, Lio/netty/channel/unix/Socket;->bind(I[BII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 289
    :cond_1
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 290
    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 291
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->bindDomainSocket(I[B)I

    move-result p1

    if-ltz p1, :cond_2

    :goto_0
    return-void

    .line 293
    :cond_2
    invoke-static {v1, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    .line 296
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 244
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object v0

    .line 245
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    iget-object v2, v0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iget v0, v0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {v1, v2, v0, p1}, Lio/netty/channel/unix/Socket;->connect(I[BII)I

    move-result p1

    goto :goto_0

    .line 246
    :cond_0
    instance-of v0, p1, Lio/netty/channel/unix/DomainSocketAddress;

    if-eqz v0, :cond_3

    .line 247
    check-cast p1, Lio/netty/channel/unix/DomainSocketAddress;

    .line 248
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {p1}, Lio/netty/channel/unix/DomainSocketAddress;->path()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->connectDomainSocket(I[B)I

    move-result p1

    :goto_0
    if-gez p1, :cond_2

    .line 253
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_1
    sget-object v0, Lio/netty/channel/unix/Socket;->CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

    const-string v1, "connect"

    invoke-static {v1, v0, p1}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;Lio/netty/channel/unix/Errors$NativeConnectException;I)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 250
    :cond_3
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SocketAddress implementation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->disconnect(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 277
    sget-object v1, Lio/netty/channel/unix/Socket;->FINISH_CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

    const-string v2, "disconnect"

    invoke-static {v2, v1, v0}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;Lio/netty/channel/unix/Errors$NativeConnectException;I)V

    :cond_0
    return-void
.end method

.method public final finishConnect()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->finishConnect(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 265
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    sget-object v1, Lio/netty/channel/unix/Socket;->FINISH_CONNECT_REFUSED_EXCEPTION:Lio/netty/channel/unix/Errors$NativeConnectException;

    const-string v2, "finishConnect"

    invoke-static {v2, v1, v0}, Lio/netty/channel/unix/Errors;->throwConnectException(Ljava/lang/String;Lio/netty/channel/unix/Errors$NativeConnectException;I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getReceiveBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSendBufferSize(I)I

    move-result v0

    return v0
.end method

.method public final getSoError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoError(I)I

    move-result v0

    return v0
.end method

.method public final getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getSoLinger(I)I

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->getTrafficClass(I)I

    move-result v0

    return v0
.end method

.method public final isBroadcast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isBroadcast(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    .line 124
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isKeepAlive(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    .line 128
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v0

    return v0
.end method

.method public final isReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReuseAddress(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReusePort()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isReusePort(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isShutdown()Z
    .locals 2

    .line 119
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    .line 120
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isTcpNoDelay(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final listen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->listen(II)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "listen"

    .line 303
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1
.end method

.method public final localAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 327
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->localAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 330
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final recvFd()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->recvFd(I)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 221
    :cond_1
    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq v0, v1, :cond_3

    sget v1, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "recvFd"

    .line 225
    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final recvFrom(Ljava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/Socket;->recvFrom(ILjava/nio/ByteBuffer;II)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final recvFromAddress(JII)Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/Socket;->recvFromAddress(IJII)Lio/netty/channel/unix/DatagramSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public final remoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 320
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/Socket;->remoteAddress(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 323
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lio/netty/channel/unix/NativeInetAddress;->address([BII)Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final sendFd(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->sendFd(II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 233
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sendFd"

    .line 237
    invoke-static {v0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final sendTo(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    instance-of v0, p4, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 138
    check-cast p4, Ljava/net/Inet6Address;

    invoke-virtual {p4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p4

    move v6, p4

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p4

    invoke-static {p4}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object p4

    move-object v5, p4

    const/4 v6, 0x0

    .line 144
    :goto_0
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/channel/unix/Socket;->sendTo(ILjava/nio/ByteBuffer;II[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 148
    :cond_1
    sget p2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq p1, p2, :cond_2

    .line 151
    sget-object p2, Lio/netty/channel/unix/Socket;->SEND_TO_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p3, Lio/netty/channel/unix/Socket;->SEND_TO_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p4, "sendTo"

    invoke-static {p4, p1, p2, p3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p1

    return p1

    .line 149
    :cond_2
    new-instance p1, Ljava/net/PortUnreachableException;

    const-string p2, "sendTo failed"

    invoke-direct {p1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendToAddress(JIILjava/net/InetAddress;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    instance-of v0, p5, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 162
    check-cast p5, Ljava/net/Inet6Address;

    invoke-virtual {p5}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p5

    move v7, p5

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p5

    invoke-static {p5}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object p5

    move-object v6, p5

    const/4 v7, 0x0

    .line 168
    :goto_0
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v8, p6

    invoke-static/range {v1 .. v8}, Lio/netty/channel/unix/Socket;->sendToAddress(IJII[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 172
    :cond_1
    sget p2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq p1, p2, :cond_2

    .line 175
    sget-object p2, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESS_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p3, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESS_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p4, "sendToAddress"

    invoke-static {p4, p1, p2, p3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p1

    return p1

    .line 173
    :cond_2
    new-instance p1, Ljava/net/PortUnreachableException;

    const-string p2, "sendToAddress failed"

    invoke-direct {p1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendToAddresses(JILjava/net/InetAddress;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    instance-of v0, p4, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 186
    check-cast p4, Ljava/net/Inet6Address;

    invoke-virtual {p4}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p4

    move v6, p4

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p4

    invoke-static {p4}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object p4

    move-object v5, p4

    const/4 v6, 0x0

    .line 192
    :goto_0
    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    move-wide v2, p1

    move v4, p3

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/channel/unix/Socket;->sendToAddresses(IJI[BII)I

    move-result p1

    if-ltz p1, :cond_1

    return p1

    .line 197
    :cond_1
    sget p2, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    if-eq p1, p2, :cond_2

    .line 200
    sget-object p2, Lio/netty/channel/unix/Socket;->CONNECTION_RESET_EXCEPTION_SENDMSG:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p3, Lio/netty/channel/unix/Socket;->SEND_TO_ADDRESSES_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p4, "sendToAddresses"

    invoke-static {p4, p1, p2, p3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p1

    return p1

    .line 198
    :cond_2
    new-instance p1, Ljava/net/PortUnreachableException;

    const-string p2, "sendToAddresses failed"

    invoke-direct {p1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBroadcast(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setBroadcast(II)V

    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setKeepAlive(II)V

    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReceiveBufferSize(II)V

    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReuseAddress(II)V

    return-void
.end method

.method public final setReusePort(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setReusePort(II)V

    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSendBufferSize(II)V

    return-void
.end method

.method public final setSoLinger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setSoLinger(II)V

    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setTcpNoDelay(II)V

    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1}, Lio/netty/channel/unix/Socket;->setTrafficClass(II)V

    return-void
.end method

.method public final shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0, v0}, Lio/netty/channel/unix/Socket;->shutdown(ZZ)V

    return-void
.end method

.method public final shutdown(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :cond_0
    iget v0, p0, Lio/netty/channel/unix/Socket;->state:I

    .line 93
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isClosed(I)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_1

    .line 97
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->isInputShutdown(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-static {v0}, Lio/netty/channel/unix/Socket;->inputShutdown(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 100
    invoke-static {v1}, Lio/netty/channel/unix/Socket;->isOutputShutdown(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    invoke-static {v1}, Lio/netty/channel/unix/Socket;->outputShutdown(I)I

    move-result v1

    :cond_2
    if-ne v1, v0, :cond_3

    return-void

    .line 108
    :cond_3
    invoke-virtual {p0, v0, v1}, Lio/netty/channel/unix/Socket;->casState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget v0, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-static {v0, p1, p2}, Lio/netty/channel/unix/Socket;->shutdown(IZZ)I

    move-result p1

    if-gez p1, :cond_4

    .line 114
    sget-object p2, Lio/netty/channel/unix/Socket;->CONNECTION_RESET_SHUTDOWN_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object v0, Lio/netty/channel/unix/Socket;->SHUTDOWN_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string v1, "shutdown"

    invoke-static {v1, p1, p2, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    :cond_4
    return-void

    .line 94
    :cond_5
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/channel/unix/Socket;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
