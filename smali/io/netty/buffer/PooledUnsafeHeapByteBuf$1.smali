.class final Lio/netty/buffer/PooledUnsafeHeapByteBuf$1;
.super Lio/netty/util/Recycler;
.source "PooledUnsafeHeapByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledUnsafeHeapByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "Lio/netty/buffer/PooledUnsafeHeapByteBuf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/PooledUnsafeHeapByteBuf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/buffer/PooledUnsafeHeapByteBuf;",
            ">;)",
            "Lio/netty/buffer/PooledUnsafeHeapByteBuf;"
        }
    .end annotation

    .line 27
    new-instance v0, Lio/netty/buffer/PooledUnsafeHeapByteBuf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;-><init>(Lio/netty/util/Recycler$Handle;ILio/netty/buffer/PooledUnsafeHeapByteBuf$1;)V

    return-object v0
.end method

.method protected bridge synthetic newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf$1;->newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/PooledUnsafeHeapByteBuf;

    move-result-object p1

    return-object p1
.end method
