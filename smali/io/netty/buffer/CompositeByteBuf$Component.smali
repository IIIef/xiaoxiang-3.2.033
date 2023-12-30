.class final Lio/netty/buffer/CompositeByteBuf$Component;
.super Ljava/lang/Object;
.source "CompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Component"
.end annotation


# instance fields
.field adjustment:I

.field final buf:Lio/netty/buffer/ByteBuf;

.field endOffset:I

.field offset:I

.field private slice:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1857
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    add-int/2addr p4, p3

    .line 1858
    iput p4, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr p2, p3

    .line 1859
    iput p2, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1860
    iput-object p5, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method static synthetic access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1847
    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method static synthetic access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1847
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object p1
.end method


# virtual methods
.method duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 1889
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    iget v2, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method free()V
    .locals 1

    .line 1895
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 1897
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    .line 1899
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_0
    const/4 v0, 0x0

    .line 1903
    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method idx(I)I
    .locals 1

    .line 1864
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    add-int/2addr p1, v0

    return p1
.end method

.method length()I
    .locals 2

    .line 1868
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method reposition(I)V
    .locals 2

    .line 1872
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v0, p1, v0

    .line 1873
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1874
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1875
    iput p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return-void
.end method

.method slice()Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 1885
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    :goto_0
    return-object v0
.end method

.method transferTo(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1880
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1881
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    return-void
.end method
