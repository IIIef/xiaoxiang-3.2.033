.class public Lcom/inuker/bluetooth/library/beacon/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"


# instance fields
.field public mBytes:[B

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inuker/bluetooth/library/beacon/BeaconItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mItems:Ljava/util/List;

    .line 19
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->trimLast([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mBytes:[B

    .line 21
    iget-object v0, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mItems:Ljava/util/List;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/beacon/BeaconParser;->parseBeacon([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 30
    iget-object v3, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mBytes:[B

    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "preParse: %s\npostParse:\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/beacon/BeaconItem;

    invoke-virtual {v2}, Lcom/inuker/bluetooth/library/beacon/BeaconItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/inuker/bluetooth/library/beacon/Beacon;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v4, v2, :cond_0

    const-string v2, "\n"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
