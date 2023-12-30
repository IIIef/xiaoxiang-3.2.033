.class public Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "Socks5InitialRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;->INIT:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private fail(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 89
    instance-of v0, p2, Lio/netty/handler/codec/DecoderException;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 93
    :cond_0
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    const/4 v2, 0x0

    sget-object v3, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->NO_AUTH:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;-><init>([Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;)V

    .line 96
    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/handler/codec/socksx/v5/Socks5Message;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    :try_start_0
    sget-object p1, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v5$Socks5InitialRequestDecoder$State:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    .line 53
    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result v0

    if-ne p1, v0, :cond_5

    .line 58
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    .line 59
    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->actualReadableBytes()I

    move-result v0

    if-ge v0, p1, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    new-array v0, p1, [Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 65
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    invoke-static {v2}, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;->valueOf(B)Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_3
    new-instance p1, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;

    invoke-direct {p1, v0}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialRequest;-><init>([Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object p1, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 72
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->actualReadableBytes()I

    move-result p1

    if-lez p1, :cond_6

    .line 74
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_5
    new-instance p2, Lio/netty/handler/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    .line 55
    invoke-virtual {p1}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 84
    invoke-direct {p0, p3, p1}, Lio/netty/handler/codec/socksx/v5/Socks5InitialRequestDecoder;->fail(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_6
    :goto_1
    return-void
.end method
