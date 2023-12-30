.class final Lio/netty/channel/epoll/LinuxSocket;
.super Lio/netty/channel/unix/Socket;
.source "LinuxSocket.java"


# static fields
.field private static final MAX_UINT32_T:J = 0xffffffffL

.field private static final SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

.field private static final SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    const-string v1, "syscall:sendfile(...)"

    .line 39
    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    .line 40
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    const-class v1, Lio/netty/channel/epoll/Native;

    const-string v2, "sendfile(...)"

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ClosedChannelException;

    sput-object v0, Lio/netty/channel/epoll/LinuxSocket;->SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lio/netty/channel/unix/Socket;-><init>(I)V

    return-void
.end method

.method private static native getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getSoBusyPoll(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpDeferAccept(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpInfo(I[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepCnt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIdle(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpKeepIntvl(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpNotSentLowAt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getTcpUserTimeout(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpFreeBind(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpRecvOrigDestAddr(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isIpTransparent(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpCork(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpFastOpenConnect(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native isTcpQuickAck(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static newSocketDgram()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 188
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDgram0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketDomain()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 192
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketDomain0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method public static newSocketStream()Lio/netty/channel/epoll/LinuxSocket;
    .locals 2

    .line 184
    new-instance v0, Lio/netty/channel/epoll/LinuxSocket;

    invoke-static {}, Lio/netty/channel/epoll/LinuxSocket;->newSocketStream0()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/epoll/LinuxSocket;-><init>(I)V

    return-object v0
.end method

.method private static native sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpFreeBind(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpRecvOrigDestAddr(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setIpTransparent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setSoBusyPoll(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpCork(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpDeferAccept(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpen(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpFastOpenConnect(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepCnt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIdle(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpKeepIntvl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpMd5Sig(I[BI[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpNotSentLowAt(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpQuickAck(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native setTcpUserTimeout(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method getPeerCredentials()Lio/netty/channel/unix/PeerCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getPeerCredentials(I)Lio/netty/channel/unix/PeerCredentials;

    move-result-object v0

    return-object v0
.end method

.method getSoBusyPoll()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getSoBusyPoll(I)I

    move-result v0

    return v0
.end method

.method getTcpDeferAccept()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpDeferAccept(I)I

    move-result v0

    return v0
.end method

.method getTcpInfo(Lio/netty/channel/epoll/EpollTcpInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    iget-object p1, p1, Lio/netty/channel/epoll/EpollTcpInfo;->info:[J

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->getTcpInfo(I[J)V

    return-void
.end method

.method getTcpKeepCnt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepCnt(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIdle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIdle(I)I

    move-result v0

    return v0
.end method

.method getTcpKeepIntvl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpKeepIntvl(I)I

    move-result v0

    return v0
.end method

.method getTcpNotSentLowAt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpNotSentLowAt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getTcpUserTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->getTcpUserTimeout(I)I

    move-result v0

    return v0
.end method

.method isIpFreeBind()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpFreeBind(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpRecvOrigDestAddr()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpRecvOrigDestAddr(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIpTransparent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isIpTransparent(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpCork()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpCork(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpFastOpenConnect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpFastOpenConnect(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTcpQuickAck()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/epoll/LinuxSocket;->isTcpQuickAck(I)I

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

    .line 174
    invoke-virtual {p1}, Lio/netty/channel/DefaultFileRegion;->open()V

    .line 176
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lio/netty/channel/epoll/LinuxSocket;->sendFile(ILio/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    return-wide p1

    :cond_0
    long-to-int p2, p1

    .line 180
    sget-object p1, Lio/netty/channel/epoll/LinuxSocket;->SENDFILE_CONNECTION_RESET_EXCEPTION:Lio/netty/channel/unix/Errors$NativeIoException;

    sget-object p3, Lio/netty/channel/epoll/LinuxSocket;->SENDFILE_CLOSED_CHANNEL_EXCEPTION:Ljava/nio/channels/ClosedChannelException;

    const-string p4, "sendfile"

    invoke-static {p4, p2, p1, p3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method setIpFreeBind(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpFreeBind(II)V

    return-void
.end method

.method setIpRecvOrigDestAddr(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpRecvOrigDestAddr(II)V

    return-void
.end method

.method setIpTransparent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setIpTransparent(II)V

    return-void
.end method

.method setSoBusyPoll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setSoBusyPoll(II)V

    return-void
.end method

.method setTcpCork(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpCork(II)V

    return-void
.end method

.method setTcpDeferAccept(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpDeferAccept(II)V

    return-void
.end method

.method setTcpFastOpen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpen(II)V

    return-void
.end method

.method setTcpFastOpenConnect(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpFastOpenConnect(II)V

    return-void
.end method

.method setTcpKeepCnt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepCnt(II)V

    return-void
.end method

.method setTcpKeepIdle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIdle(II)V

    return-void
.end method

.method setTcpKeepIntvl(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpKeepIntvl(II)V

    return-void
.end method

.method setTcpMd5Sig(Ljava/net/InetAddress;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lio/netty/channel/unix/NativeInetAddress;->newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/unix/NativeInetAddress;->address()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/channel/unix/NativeInetAddress;->scopeId()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpMd5Sig(I[BI[B)V

    return-void
.end method

.method setTcpNotSentLowAt(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    long-to-int p2, p1

    invoke-static {v0, p2}, Lio/netty/channel/epoll/LinuxSocket;->setTcpNotSentLowAt(II)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tcpNotSentLowAt must be a uint32_t"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setTcpQuickAck(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpQuickAck(II)V

    return-void
.end method

.method setTcpUserTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lio/netty/channel/epoll/LinuxSocket;->setTcpUserTimeout(II)V

    return-void
.end method
