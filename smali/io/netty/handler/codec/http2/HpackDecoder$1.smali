.class synthetic Lio/netty/handler/codec/http2/HpackDecoder$1;
.super Ljava/lang/Object;
.source "HpackDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 428
    invoke-static {}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->values()[Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    :try_start_0
    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    sget-object v1, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
