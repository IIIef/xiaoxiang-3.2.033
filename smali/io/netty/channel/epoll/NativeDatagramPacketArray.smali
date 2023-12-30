.class final Lio/netty/channel/epoll/NativeDatagramPacketArray;
.super Ljava/lang/Object;
.source "NativeDatagramPacketArray.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    }
.end annotation


# instance fields
.field private count:I

.field private final iovArray:Lio/netty/channel/unix/IovArray;

.field private final packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lio/netty/channel/unix/Limits;->UIO_MAX_IOV:I

    new-array v0, v0, [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    .line 39
    new-instance v0, Lio/netty/channel/unix/IovArray;

    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 44
    new-instance v2, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    invoke-direct {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method add(Lio/netty/channel/socket/DatagramPacket;)Z
    .locals 7

    .line 53
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 58
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 59
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    return v3

    .line 63
    :cond_1
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    iget v4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    aget-object v1, v1, v4

    .line 64
    invoke-virtual {p1}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    .line 66
    iget-object v4, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v4}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v4

    .line 67
    iget-object v5, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v5, v0}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 71
    :cond_2
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0, v4}, Lio/netty/channel/unix/IovArray;->memoryAddress(I)J

    move-result-wide v5

    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->count()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v1, v5, v6, v0, p1}, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;->access$000(Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;JILjava/net/InetSocketAddress;)V

    .line 73
    iget p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    return v3
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    .line 98
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    return-void
.end method

.method count()I
    .locals 1

    .line 86
    iget v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->count:I

    return v0
.end method

.method packets()[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->packets:[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    return-object v0
.end method

.method public processMessage(Ljava/lang/Object;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {p0, p1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->add(Lio/netty/channel/socket/DatagramPacket;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method release()V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray;->iovArray:Lio/netty/channel/unix/IovArray;

    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->release()V

    return-void
.end method
