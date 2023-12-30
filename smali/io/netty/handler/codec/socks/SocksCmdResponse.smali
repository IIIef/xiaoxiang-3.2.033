.class public final Lio/netty/handler/codec/socks/SocksCmdResponse;
.super Lio/netty/handler/codec/socks/SocksResponse;
.source "SocksCmdResponse.java"


# static fields
.field private static final DOMAIN_ZEROED:[B

.field private static final IPv4_HOSTNAME_ZEROED:[B

.field private static final IPv6_HOSTNAME_ZEROED:[B


# instance fields
.field private final addressType:Lio/netty/handler/codec/socks/SocksAddressType;

.field private final cmdStatus:Lio/netty/handler/codec/socks/SocksCmdStatus;

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 38
    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->DOMAIN_ZEROED:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 39
    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->IPv4_HOSTNAME_ZEROED:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 40
    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->IPv6_HOSTNAME_ZEROED:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lio/netty/handler/codec/socks/SocksCmdStatus;Lio/netty/handler/codec/socks/SocksAddressType;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/socks/SocksCmdResponse;-><init>(Lio/netty/handler/codec/socks/SocksCmdStatus;Lio/netty/handler/codec/socks/SocksAddressType;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/socks/SocksCmdStatus;Lio/netty/handler/codec/socks/SocksAddressType;Ljava/lang/String;I)V
    .locals 3

    .line 63
    sget-object v0, Lio/netty/handler/codec/socks/SocksResponseType;->CMD:Lio/netty/handler/codec/socks/SocksResponseType;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/socks/SocksResponse;-><init>(Lio/netty/handler/codec/socks/SocksResponseType;)V

    const-string v0, "cmdStatus"

    .line 65
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "addressType"

    .line 68
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_6

    .line 71
    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse$1;->$SwitchMap$io$netty$handler$codec$socks$SocksAddressType:[I

    invoke-virtual {p2}, Lio/netty/handler/codec/socks/SocksAddressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p3}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a valid IPv6 address"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_2
    invoke-static {p3}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_3

    move-object p3, v0

    goto :goto_0

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " IDN: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exceeds 255 char limit"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_4
    invoke-static {p3}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a valid IPv4 address"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    if-ltz p4, :cond_7

    const v0, 0xffff

    if-gt p4, v0, :cond_7

    .line 96
    iput-object p1, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->cmdStatus:Lio/netty/handler/codec/socks/SocksCmdStatus;

    .line 97
    iput-object p2, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->addressType:Lio/netty/handler/codec/socks/SocksAddressType;

    .line 98
    iput-object p3, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    .line 99
    iput p4, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->port:I

    return-void

    .line 94
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not in bounds 0 <= x <= 65535"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addressType()Lio/netty/handler/codec/socks/SocksAddressType;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->addressType:Lio/netty/handler/codec/socks/SocksAddressType;

    return-object v0
.end method

.method public cmdStatus()Lio/netty/handler/codec/socks/SocksCmdStatus;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->cmdStatus:Lio/netty/handler/codec/socks/SocksCmdStatus;

    return-object v0
.end method

.method public encodeAsByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lio/netty/handler/codec/socks/SocksCmdResponse;->protocolVersion()Lio/netty/handler/codec/socks/SocksProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksProtocolVersion;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 145
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->cmdStatus:Lio/netty/handler/codec/socks/SocksCmdStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksCmdStatus;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 147
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->addressType:Lio/netty/handler/codec/socks/SocksAddressType;

    invoke-virtual {v0}, Lio/netty/handler/codec/socks/SocksAddressType;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 148
    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse$1;->$SwitchMap$io$netty$handler$codec$socks$SocksAddressType:[I

    iget-object v1, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->addressType:Lio/netty/handler/codec/socks/SocksAddressType;

    invoke-virtual {v1}, Lio/netty/handler/codec/socks/SocksAddressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 168
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->IPv6_HOSTNAME_ZEROED:[B

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v0}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    :goto_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 171
    iget v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->port:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 157
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 159
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    goto :goto_1

    .line 161
    :cond_3
    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->DOMAIN_ZEROED:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 162
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 164
    :goto_1
    iget v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->port:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    goto :goto_3

    .line 150
    :cond_4
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponse;->IPv4_HOSTNAME_ZEROED:[B

    goto :goto_2

    .line 151
    :cond_5
    invoke-static {v0}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    :goto_2
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 153
    iget v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->port:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :goto_3
    return-void
.end method

.method public host()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->addressType:Lio/netty/handler/codec/socks/SocksAddressType;

    sget-object v1, Lio/netty/handler/codec/socks/SocksAddressType;->DOMAIN:Lio/netty/handler/codec/socks/SocksAddressType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->host:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public port()I
    .locals 1

    .line 139
    iget v0, p0, Lio/netty/handler/codec/socks/SocksCmdResponse;->port:I

    return v0
.end method
