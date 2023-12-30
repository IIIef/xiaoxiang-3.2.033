.class public final enum Lio/netty/handler/ssl/SslProvider;
.super Ljava/lang/Enum;
.source "SslProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/SslProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/SslProvider;

.field public static final enum JDK:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL:Lio/netty/handler/ssl/SslProvider;

.field public static final enum OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lio/netty/handler/ssl/SslProvider;

    const-string v1, "JDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    .line 33
    new-instance v1, Lio/netty/handler/ssl/SslProvider;

    const-string v3, "OPENSSL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    .line 37
    new-instance v3, Lio/netty/handler/ssl/SslProvider;

    const-string v5, "OPENSSL_REFCNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/SslProvider;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/SslProvider;->OPENSSL_REFCNT:Lio/netty/handler/ssl/SslProvider;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/ssl/SslProvider;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 25
    sput-object v5, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 25
    const-class v0, Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/SslProvider;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 25
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->$VALUES:[Lio/netty/handler/ssl/SslProvider;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/SslProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method
