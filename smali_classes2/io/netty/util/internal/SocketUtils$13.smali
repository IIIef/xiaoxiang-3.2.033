.class final Lio/netty/util/internal/SocketUtils$13;
.super Ljava/lang/Object;
.source "SocketUtils.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic val$intf:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$13;->val$intf:Ljava/net/NetworkInterface;

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

    .line 203
    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$13;->run()[B

    move-result-object v0

    return-object v0
.end method

.method public run()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/netty/util/internal/SocketUtils$13;->val$intf:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    return-object v0
.end method
