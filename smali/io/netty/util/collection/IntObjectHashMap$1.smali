.class Lio/netty/util/collection/IntObjectHashMap$1;
.super Ljava/lang/Object;
.source "IntObjectHashMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/IntObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/collection/IntObjectHashMap;


# direct methods
.method constructor <init>(Lio/netty/util/collection/IntObjectHashMap;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lio/netty/util/collection/IntObjectHashMap$1;->this$0:Lio/netty/util/collection/IntObjectHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap$PrimitiveIterator;

    iget-object v1, p0, Lio/netty/util/collection/IntObjectHashMap$1;->this$0:Lio/netty/util/collection/IntObjectHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/collection/IntObjectHashMap$PrimitiveIterator;-><init>(Lio/netty/util/collection/IntObjectHashMap;Lio/netty/util/collection/IntObjectHashMap$1;)V

    return-object v0
.end method
