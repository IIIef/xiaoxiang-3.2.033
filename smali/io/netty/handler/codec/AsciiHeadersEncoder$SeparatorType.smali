.class public final enum Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
.super Ljava/lang/Enum;
.source "AsciiHeadersEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/AsciiHeadersEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeparatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

.field public static final enum COLON:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

.field public static final enum COLON_SPACE:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    const-string v1, "COLON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    .line 40
    new-instance v1, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    const-string v3, "COLON_SPACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON_SPACE:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->$VALUES:[Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
    .locals 1

    .line 32
    const-class v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
    .locals 1

    .line 32
    sget-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->$VALUES:[Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-virtual {v0}, [Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    return-object v0
.end method
