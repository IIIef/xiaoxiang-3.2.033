.class final Lio/netty/util/internal/SocketUtils$6;
.super Ljava/lang/Object;
.source "SocketUtils.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->bind(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$networkChannel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$6;->val$networkChannel:Ljava/nio/channels/DatagramChannel;

    iput-object p2, p0, Lio/netty/util/internal/SocketUtils$6;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$6;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/netty/util/internal/SocketUtils$6;->val$networkChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lio/netty/util/internal/SocketUtils$6;->val$address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const/4 v0, 0x0

    return-object v0
.end method
