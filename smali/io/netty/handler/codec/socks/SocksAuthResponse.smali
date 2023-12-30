.class public final Lio/netty/handler/codec/socks/SocksAuthResponse;
.super Lio/netty/handler/codec/socks/SocksResponse;
.source "SocksAuthResponse.java"


# static fields
.field private static final SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;


# instance fields
.field private final authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->AUTH_PASSWORD:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    sput-object v0, Lio/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/socks/SocksAuthStatus;)V
    .locals 1

    .line 31
    sget-object v0, Lio/netty/handler/codec/socks/SocksResponseType;->AUTH:Lio/netty/handler/codec/socks/SocksResponseType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksResponse;-><init>(Lio/netty/handler/codec/socks/SocksResponseType;)V

    const-string v0, "authStatus"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    return-void
.end method


# virtual methods
.method public authStatus()Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    return-object v0
.end method

.method public encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 49
    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksSubnegotiationVersion;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 50
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lio/netty/handler/codec/socks/SocksAuthStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksAuthStatus;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method
