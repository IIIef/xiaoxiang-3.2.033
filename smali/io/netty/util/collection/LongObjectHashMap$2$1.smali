.class Lio/netty/util/collection/LongObjectHashMap$2$1;
.super Ljava/lang/Object;
.source "LongObjectHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/collection/LongObjectHashMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/LongObjectHashMap<",
            "TV;>.PrimitiveIterator;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lio/netty/util/collection/LongObjectHashMap$2;


# direct methods
.method constructor <init>(Lio/netty/util/collection/LongObjectHashMap$2;)V
    .locals 2

    .line 224
    iput-object p1, p0, Lio/netty/util/collection/LongObjectHashMap$2$1;->this$1:Lio/netty/util/collection/LongObjectHashMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    iget-object p1, p1, Lio/netty/util/collection/LongObjectHashMap$2;->this$0:Lio/netty/util/collection/LongObjectHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;-><init>(Lio/netty/util/collection/LongObjectHashMap;Lio/netty/util/collection/LongObjectHashMap$1;)V

    iput-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$2$1;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$2$1;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$2$1;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->next()Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/collection/LongObjectMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 239
    iget-object v0, p0, Lio/netty/util/collection/LongObjectHashMap$2$1;->iter:Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;

    invoke-virtual {v0}, Lio/netty/util/collection/LongObjectHashMap$PrimitiveIterator;->remove()V

    return-void
.end method
