.class Lio/netty/channel/sctp/nio/NioSctpChannel$1;
.super Ljava/lang/Object;
.source "NioSctpChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/sctp/nio/NioSctpChannel;->bindAddress(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/sctp/nio/NioSctpChannel;

.field final synthetic val$localAddress:Ljava/net/InetAddress;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/channel/sctp/nio/NioSctpChannel;Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->this$0:Lio/netty/channel/sctp/nio/NioSctpChannel;

    iput-object p2, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->val$localAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 359
    iget-object v0, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->this$0:Lio/netty/channel/sctp/nio/NioSctpChannel;

    iget-object v1, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->val$localAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lio/netty/channel/sctp/nio/NioSctpChannel$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/sctp/nio/NioSctpChannel;->bindAddress(Ljava/net/InetAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method
