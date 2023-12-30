.class final Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;
.super Lio/netty/buffer/UnpooledDirectByteBuf;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadLocalDirectByteBuf"
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handle:Lio/netty/util/Recycler$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1166
    new-instance v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 1182
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/16 v1, 0x100

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 1183
    iput-object p1, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->handle:Lio/netty/util/Recycler$Handle;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/buffer/ByteBufUtil$1;)V
    .locals 0

    .line 1164
    invoke-direct {p0, p1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method static newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;
    .locals 1

    .line 1174
    sget-object v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v0}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    .line 1175
    invoke-virtual {v0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->resetRefCnt()V

    return-object v0
.end method


# virtual methods
.method protected deallocate()V
    .locals 2

    .line 1188
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->capacity()I

    move-result v0

    invoke-static {}, Lio/netty/buffer/ByteBufUtil;->access$500()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1189
    invoke-super {p0}, Lio/netty/buffer/UnpooledDirectByteBuf;->deallocate()V

    goto :goto_0

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1192
    iget-object v0, p0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->handle:Lio/netty/util/Recycler$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/Recycler$Handle;->recycle(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
