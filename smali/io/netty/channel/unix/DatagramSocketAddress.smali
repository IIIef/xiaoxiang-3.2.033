.class public final Lio/netty/channel/unix/DatagramSocketAddress;
.super Ljava/net/InetSocketAddress;
.source "DatagramSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x2af301bec7eb87a1L


# instance fields
.field private final localAddress:Lio/netty/channel/unix/DatagramSocketAddress;

.field private final receivedAmount:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILio/netty/channel/unix/DatagramSocketAddress;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lio/netty/channel/unix/DatagramSocketAddress;->receivedAmount:I

    .line 36
    iput-object p4, p0, Lio/netty/channel/unix/DatagramSocketAddress;->localAddress:Lio/netty/channel/unix/DatagramSocketAddress;

    return-void
.end method


# virtual methods
.method public localAddress()Lio/netty/channel/unix/DatagramSocketAddress;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/netty/channel/unix/DatagramSocketAddress;->localAddress:Lio/netty/channel/unix/DatagramSocketAddress;

    return-object v0
.end method

.method public receivedAmount()I
    .locals 1

    .line 44
    iget v0, p0, Lio/netty/channel/unix/DatagramSocketAddress;->receivedAmount:I

    return v0
.end method
