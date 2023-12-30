.class public final Lio/netty/channel/epoll/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field public static final EPOLLERR:I

.field public static final EPOLLET:I

.field public static final EPOLLIN:I

.field public static final EPOLLOUT:I

.field public static final EPOLLRDHUP:I

.field public static final IS_SUPPORTING_SENDMMSG:Z

.field public static final IS_SUPPORTING_TCP_FASTOPEN:Z

.field public static final KERNEL_VERSION:Ljava/lang/String;

.field private static final SENDMMSG_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SENDMMSG_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

.field private static final SPLICE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SPLICE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

.field public static final TCP_MD5SIG_MAXKEYLEN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lio/netty/channel/epoll/Native;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 58
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->offsetofEpollData()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->loadNativeLibrary()V

    .line 63
    :goto_0
    invoke-static {}, Lio/netty/channel/unix/Socket;->initialize()V

    .line 67
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollin()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    .line 68
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollout()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    .line 69
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollrdhup()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    .line 70
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollet()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 71
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollerr()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    .line 73
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingSendmmsg()Z

    move-result v1

    sput-boolean v1, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_SENDMMSG:Z

    .line 74
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingTcpFastopen()Z

    move-result v1

    sput-boolean v1, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN:Z

    .line 75
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpMd5SigMaxKeyLen()I

    move-result v1

    sput v1, Lio/netty/channel/epoll/Native;->TCP_MD5SIG_MAXKEYLEN:I

    .line 76
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->kernelVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/netty/channel/epoll/Native;->KERNEL_VERSION:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v2, "sendmmsg(...)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ClosedChannelException;

    sput-object v1, Lio/netty/channel/epoll/Native;->SENDMMSG_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 82
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-string v2, "splice(...)"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ClosedChannelException;

    sput-object v0, Lio/netty/channel/epoll/Native;->SPLICE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    .line 86
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v1, "syscall:sendmmsg(...)"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/Native;->SENDMMSG_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 88
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v1, "syscall:splice(...)"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/Native;->SPLICE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lio/netty/channel/epoll/Native;->epollBusyWait0(IJI)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "epoll_wait"

    .line 131
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollBusyWait0(IJI)I
.end method

.method private static native epollCreate()I
.end method

.method public static epollCtlAdd(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlAdd0(III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 141
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollCtlAdd0(III)I
.end method

.method public static epollCtlDel(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {p0, p1}, Lio/netty/channel/epoll/Native;->epollCtlDel0(II)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 157
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollCtlDel0(II)I
.end method

.method public static epollCtlMod(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlMod0(III)I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p1, "epoll_ctl"

    .line 149
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollCtlMod0(III)I
.end method

.method public static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v3

    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v4

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lio/netty/channel/epoll/Native;->epollWait0(IJIIII)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "epoll_wait"

    .line 117
    invoke-static {p1, p0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0
.end method

.method private static native epollWait0(IJIIII)I
.end method

.method private static native eventFd()I
.end method

.method public static native eventFdRead(I)V
.end method

.method public static native eventFdWrite(IJ)V
.end method

.method private static loadNativeLibrary()V
    .locals 4

    const-string v0, "os.name"

    .line 190
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "netty_transport_native_epoll"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    const-class v2, Lio/netty/channel/epoll/Native;

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 198
    :try_start_0
    invoke-static {v1, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 201
    :try_start_1
    invoke-static {v0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 202
    sget-object v0, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to load {}"

    invoke-interface {v0, v2, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 204
    invoke-static {v3, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 205
    throw v3

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only supported on Linux"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newEpollCreate()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 107
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->epollCreate()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static newEventFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 93
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->eventFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static newTimerFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 97
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->timerFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static native offsetofEpollData()I
.end method

.method public static sendmmsg(I[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {p0, p1, p2, p3}, Lio/netty/channel/epoll/Native;->sendmmsg0(I[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 179
    :cond_0
    sget-object p1, Lio/netty/channel/epoll/Native;->SENDMMSG_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p2, Lio/netty/channel/epoll/Native;->SENDMMSG_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p3, "sendmmsg"

    invoke-static {p3, p0, p1, p2}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p0

    return p0
.end method

.method private static native sendmmsg0(I[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
.end method

.method public static native sizeofEpollEvent()I
.end method

.method public static splice(IJIJJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static/range {p0 .. p7}, Lio/netty/channel/epoll/Native;->splice0(IJIJJ)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 168
    :cond_0
    sget-object p1, Lio/netty/channel/epoll/Native;->SPLICE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p2, Lio/netty/channel/epoll/Native;->SPLICE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p3, "splice"

    invoke-static {p3, p0, p1, p2}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p0

    return p0
.end method

.method private static native splice0(IJIJJ)I
.end method

.method private static native timerFd()I
.end method

.method static native timerFdRead(I)V
.end method
