.class final Lio/netty/handler/codec/serialization/SoftReferenceMap;
.super Lio/netty/handler/codec/serialization/ReferenceMap;
.source "SoftReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/serialization/ReferenceMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/ref/Reference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lio/netty/handler/codec/serialization/ReferenceMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method fold(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/ref/Reference<",
            "TV;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
