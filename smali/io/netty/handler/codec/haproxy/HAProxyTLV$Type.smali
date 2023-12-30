.class public final enum Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;
.super Ljava/lang/Enum;
.source "HAProxyTLV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/haproxy/HAProxyTLV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum OTHER:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_ALPN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_AUTHORITY:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_NETNS:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_SSL:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_SSL_CN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

.field public static final enum PP2_TYPE_SSL_VERSION:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 39
    new-instance v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v1, "PP2_TYPE_ALPN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_ALPN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 40
    new-instance v1, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v3, "PP2_TYPE_AUTHORITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_AUTHORITY:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 41
    new-instance v3, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v5, "PP2_TYPE_SSL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 42
    new-instance v5, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v7, "PP2_TYPE_SSL_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL_VERSION:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 43
    new-instance v7, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v9, "PP2_TYPE_SSL_CN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL_CN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 44
    new-instance v9, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v11, "PP2_TYPE_NETNS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_NETNS:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    .line 48
    new-instance v11, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->OTHER:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 38
    sput-object v13, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->$VALUES:[Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static typeForByteValue(B)Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 74
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->OTHER:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 70
    :pswitch_0
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL_CN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 68
    :pswitch_1
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL_VERSION:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 66
    :pswitch_2
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_SSL:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 72
    :cond_0
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_NETNS:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 64
    :cond_1
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_AUTHORITY:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    .line 62
    :cond_2
    sget-object p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->PP2_TYPE_ALPN:Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;
    .locals 1

    .line 38
    const-class v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;
    .locals 1

    .line 38
    sget-object v0, Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->$VALUES:[Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    invoke-virtual {v0}, [Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/haproxy/HAProxyTLV$Type;

    return-object v0
.end method
