.class public final Lio/netty/util/collection/ShortCollections;
.super Ljava/lang/Object;
.source "ShortCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/ShortCollections$UnmodifiableMap;,
        Lio/netty/util/collection/ShortCollections$EmptyMap;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Lio/netty/util/collection/ShortObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/ShortObjectMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lio/netty/util/collection/ShortCollections$EmptyMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/collection/ShortCollections$EmptyMap;-><init>(Lio/netty/util/collection/ShortCollections$1;)V

    sput-object v0, Lio/netty/util/collection/ShortCollections;->EMPTY_MAP:Lio/netty/util/collection/ShortObjectMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyMap()Lio/netty/util/collection/ShortObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/collection/ShortObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lio/netty/util/collection/ShortCollections;->EMPTY_MAP:Lio/netty/util/collection/ShortObjectMap;

    return-object v0
.end method

.method public static unmodifiableMap(Lio/netty/util/collection/ShortObjectMap;)Lio/netty/util/collection/ShortObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/collection/ShortObjectMap<",
            "TV;>;)",
            "Lio/netty/util/collection/ShortObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lio/netty/util/collection/ShortCollections$UnmodifiableMap;

    invoke-direct {v0, p0}, Lio/netty/util/collection/ShortCollections$UnmodifiableMap;-><init>(Lio/netty/util/collection/ShortObjectMap;)V

    return-object v0
.end method
