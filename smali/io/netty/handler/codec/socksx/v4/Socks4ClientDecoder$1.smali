.class synthetic Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$1;
.super Ljava/lang/Object;
.source "Socks4ClientDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ClientDecoder$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->values()[Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ClientDecoder$State:[I

    :try_start_0
    sget-object v1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->START:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ClientDecoder$State:[I

    sget-object v1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v4$Socks4ClientDecoder$State:[I

    sget-object v1, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/socksx/v4/Socks4ClientDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
