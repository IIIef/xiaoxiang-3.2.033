.class final Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;
.super Ljava/lang/Object;
.source "Java9SslEngine.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/Java9SslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlpnSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljavax/net/ssl/SSLEngine;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private called:Z

.field private final selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

.field final synthetic this$0:Lio/netty/handler/ssl/Java9SslEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lio/netty/handler/ssl/Java9SslEngine;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/Java9SslEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->this$0:Lio/netty/handler/ssl/Java9SslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Ljavax/net/ssl/SSLEngine;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->apply(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->called:Z

    .line 51
    :try_start_0
    iget-object p1, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {p1, p2}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->select(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method checkUnsupported()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->called:Z

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->this$0:Lio/netty/handler/ssl/Java9SslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/Java9SslEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lio/netty/handler/ssl/Java9SslEngine$AlpnSelector;->selector:Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;

    invoke-interface {v0}, Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator$ProtocolSelector;->unsupported()V

    :cond_1
    return-void
.end method
