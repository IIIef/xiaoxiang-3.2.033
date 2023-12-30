.class public Lcom/inuker/bluetooth/library/beacon/BeaconParser;
.super Ljava/lang/Object;
.source "BeaconParser.java"


# instance fields
.field private bytes:[B

.field private mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/beacon/BeaconItem;)V
    .locals 0

    .line 21
    iget-object p1, p1, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->bytes:[B

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/beacon/BeaconParser;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->bytes:[B

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static parse([BI)Lcom/inuker/bluetooth/library/beacon/BeaconItem;
    .locals 5

    .line 65
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 66
    aget-byte v0, p0, p1

    if-lez v0, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 68
    aget-byte v2, p0, v2

    add-int/2addr p1, v1

    .line 71
    array-length v3, p0

    if-ge p1, v3, :cond_1

    .line 72
    new-instance v3, Lcom/inuker/bluetooth/library/beacon/BeaconItem;

    invoke-direct {v3}, Lcom/inuker/bluetooth/library/beacon/BeaconItem;-><init>()V

    add-int v4, p1, v0

    sub-int/2addr v4, v1

    .line 76
    array-length v1, p0

    if-lt v4, v1, :cond_0

    .line 77
    array-length v1, p0

    add-int/lit8 v4, v1, -0x1

    :cond_0
    and-int/lit16 v1, v2, 0xff

    .line 80
    iput v1, v3, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->type:I

    .line 81
    iput v0, v3, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->len:I

    .line 83
    invoke-static {p0, p1, v4}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->getBytes([BII)[B

    move-result-object p0

    iput-object p0, v3, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->bytes:[B

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public static parseBeacon([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/beacon/BeaconItem;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 50
    invoke-static {p0, v1}, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->parse([BI)Lcom/inuker/bluetooth/library/beacon/BeaconItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget v2, v2, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->len:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBit(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readShort()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setPosition(I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
