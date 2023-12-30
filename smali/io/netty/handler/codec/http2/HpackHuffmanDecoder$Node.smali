.class final Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;
.super Ljava/lang/Object;
.source "HpackHuffmanDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackHuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bits:I

.field private final children:[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

.field private final symbol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->symbol:I

    const/16 v0, 0x8

    .line 83
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->bits:I

    const/16 v0, 0x100

    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    .line 84
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->children:[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->symbol:I

    .line 96
    iput p2, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->bits:I

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->children:[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->isTerminal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;
    .locals 0

    .line 72
    iget-object p0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->children:[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    return-object p0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I
    .locals 0

    .line 72
    iget p0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->bits:I

    return p0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;)I
    .locals 0

    .line 72
    iget p0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->symbol:I

    return p0
.end method

.method private isTerminal()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;->children:[Lio/netty/handler/codec/http2/HpackHuffmanDecoder$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
