.class final Lio/netty/buffer/PooledDuplicatedByteBuf$1;
.super Lio/netty/util/Recycler;
.source "PooledDuplicatedByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledDuplicatedByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "Lio/netty/buffer/PooledDuplicatedByteBuf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/PooledDuplicatedByteBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "Lio/netty/buffer/PooledDuplicatedByteBuf;",
            ">;)",
            "Lio/netty/buffer/PooledDuplicatedByteBuf;"
        }
    .end annotation

    .line 36
    new-instance v0, Lio/netty/buffer/PooledDuplicatedByteBuf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/buffer/PooledDuplicatedByteBuf;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/buffer/PooledDuplicatedByteBuf$1;)V

    return-object v0
.end method

.method protected bridge synthetic newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDuplicatedByteBuf$1;->newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object p1

    return-object p1
.end method
