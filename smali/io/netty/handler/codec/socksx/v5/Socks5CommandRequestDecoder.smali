.class public Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "Socks5CommandRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder<",
        "Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final addressDecoder:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;->DEFAULT:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;-><init>(Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;)V
    .locals 1

    .line 50
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;->INIT:Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    const-string v0, "addressDecoder"

    .line 52
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->addressDecoder:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;

    return-void
.end method

.method private fail(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 5
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

    .line 96
    instance-of v0, p2, Lio/netty/handler/codec/DecoderException;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 100
    :cond_0
    sget-object v0, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;

    sget-object v1, Lio/netty/handler/codec/socksx/v5/Socks5CommandType;->CONNECT:Lio/netty/handler/codec/socksx/v5/Socks5CommandType;

    sget-object v2, Lio/netty/handler/codec/socksx/v5/Socks5AddressType;->IPv4:Lio/netty/handler/codec/socksx/v5/Socks5AddressType;

    const/4 v3, 0x1

    const-string v4, "0.0.0.0"

    invoke-direct {v0, v1, v2, v4, v3}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;-><init>(Lio/netty/handler/codec/socksx/v5/Socks5CommandType;Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Ljava/lang/String;I)V

    .line 104
    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p2

    invoke-interface {v0, p2}, Lio/netty/handler/codec/socksx/v5/Socks5Message;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
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

    .line 61
    :try_start_0
    sget-object p1, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$1;->$SwitchMap$io$netty$handler$codec$socksx$v5$Socks5CommandRequestDecoder$State:[I

    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->actualReadableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    .line 64
    sget-object v1, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v1}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result v1

    if-ne p1, v1, :cond_3

    .line 69
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    invoke-static {p1}, Lio/netty/handler/codec/socksx/v5/Socks5CommandType;->valueOf(B)Lio/netty/handler/codec/socksx/v5/Socks5CommandType;

    move-result-object p1

    .line 70
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 71
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/socksx/v5/Socks5AddressType;->valueOf(B)Lio/netty/handler/codec/socksx/v5/Socks5AddressType;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->addressDecoder:Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;

    invoke-interface {v1, v0, p2}, Lio/netty/handler/codec/socksx/v5/Socks5AddressDecoder;->decodeAddress(Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v2

    .line 75
    new-instance v3, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;

    invoke-direct {v3, p1, v0, v1, v2}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5CommandRequest;-><init>(Lio/netty/handler/codec/socksx/v5/Socks5CommandType;Lio/netty/handler/codec/socksx/v5/Socks5AddressType;Ljava/lang/String;I)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object p1, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder$State;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 79
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->actualReadableBytes()I

    move-result p1

    if-lez p1, :cond_4

    .line 81
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_3
    new-instance p2, Lio/netty/handler/codec/DecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    .line 66
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

    .line 91
    invoke-direct {p0, p3, p1}, Lio/netty/handler/codec/socksx/v5/Socks5CommandRequestDecoder;->fail(Ljava/util/List;Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method
