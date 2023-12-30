.class final enum Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;
.super Ljava/lang/Enum;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

.field public static final enum IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

.field public static final enum IN_PROGRESS:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

.field public static final enum REQUESTED:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 440
    new-instance v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    .line 445
    new-instance v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    .line 450
    new-instance v3, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    const-string v5, "REQUESTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 436
    sput-object v5, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->$VALUES:[Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;
    .locals 1

    .line 436
    const-class v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;
    .locals 1

    .line 436
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->$VALUES:[Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    return-object v0
.end method
