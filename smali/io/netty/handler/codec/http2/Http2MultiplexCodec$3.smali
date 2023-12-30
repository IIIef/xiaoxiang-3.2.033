.class synthetic Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;
.super Ljava/lang/Object;
.source "Http2MultiplexCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2MultiplexCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$netty$handler$codec$http2$Http2MultiplexCodec$ReadStatus:[I

.field static final synthetic $SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 997
    invoke-static {}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->values()[Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2MultiplexCodec$ReadStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2MultiplexCodec$ReadStatus:[I

    sget-object v3, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2MultiplexCodec$ReadStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :catch_1
    invoke-static {}, Lio/netty/handler/codec/http2/Http2Stream$State;->values()[Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    :try_start_2
    sget-object v3, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    sget-object v2, Lio/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/netty/handler/codec/http2/Http2MultiplexCodec$3;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    sget-object v1, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
