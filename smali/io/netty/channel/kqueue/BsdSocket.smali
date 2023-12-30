.class final Lio/netty/channel/kqueue/BsdSocket;
.super Lio/netty/channel/unix/Socket;
.source "BsdSocket.java"


# static fields
.field private static final APPLE_SND_LOW_AT_MAX:I = 0x20000

.field static final BSD_SND_LOW_AT_MAX:I

.field private static final FREEBSD_SND_LOW_AT_MAX:I = 0x8000

.field private static final SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-class v1, Lio/netty/channel/kqueue/Native;

    const-string v2, "sendfile(..)"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ClosedChannelException;

    sput-object v0, Lio/netty/channel/kqueue/BsdSocket;->SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const/high16 v0, 0x20000

    const v1, 0x8000

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/BsdSocket;->BSD_SND_LOW_AT_MAX:I

    .line 47
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v1, "syscall:sendfile"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    sput-object v0, Lio/netty/channel/kqueue/BsdSocket;->SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-void
.end method

.method private static native getAcceptFilter(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSndLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNoPush(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static newSocketDgram()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 101
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 105
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream()Lio/netty/channel/kqueue/BsdSocket;
    .locals 2

    .line 97
    new-instance v0, Lio/netty/channel/kqueue/BsdSocket;

    invoke-static {}, Lio/netty/channel/kqueue/BsdSocket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/kqueue/BsdSocket;-><init>(I)V

    return-object v0
.end method

.method private static native sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setAcceptFilter(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSndLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNoPush(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method getAcceptFilter()Lio/netty/channel/kqueue/AcceptFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getAcceptFilter(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lio/netty/channel/kqueue/AcceptFilter;->PLATFORM_UNSUPPORTED:Lio/netty/channel/kqueue/AcceptFilter;

    goto :goto_0

    :cond_0
    new-instance v1, Lio/netty/channel/kqueue/AcceptFilter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Lio/netty/channel/kqueue/AcceptFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method getSndLowAt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getSndLowAt(I)I

    move-result v0

    return v0
.end method

.method isTcpNoPush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/kqueue/BsdSocket;->getTcpNoPush(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method sendFile(Lio/netty/channel/DefaultFileRegion;JJJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 89
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/netty/channel/kqueue/BsdSocket;->sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    .line 93
    sget-object p1, Lio/netty/channel/kqueue/BsdSocket;->SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p3, Lio/netty/channel/kqueue/BsdSocket;->SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p4, "sendfile"

    invoke-static {p4, p2, p1, p3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method setAcceptFilter(Lio/netty/channel/kqueue/AcceptFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/kqueue/AcceptFilter;->filterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/channel/kqueue/AcceptFilter;->filterArgs()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/netty/channel/kqueue/BsdSocket;->setAcceptFilter(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setSndLowAt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setSndLowAt(II)V

    return-void
.end method

.method setTcpNoPush(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/kqueue/BsdSocket;->setTcpNoPush(II)V

    return-void
.end method
