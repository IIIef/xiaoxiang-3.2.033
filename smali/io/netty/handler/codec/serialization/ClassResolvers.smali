.class public final Lio/netty/handler/codec/serialization/ClassResolvers;
.super Ljava/lang/Object;
.source "ClassResolvers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheDisabled(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 1

    .line 31
    new-instance v0, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method static defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    .line 93
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 98
    :cond_1
    const-class p0, Lio/netty/handler/codec/serialization/ClassResolvers;

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static softCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 3

    .line 82
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 83
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance p0, Lio/netty/handler/codec/serialization/SoftReferenceMap;

    .line 85
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static softCachingResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 3

    .line 55
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 56
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance p0, Lio/netty/handler/codec/serialization/SoftReferenceMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2}, Lio/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static weakCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 3

    .line 68
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 69
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance p0, Lio/netty/handler/codec/serialization/WeakReferenceMap;

    .line 71
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static weakCachingResolver(Ljava/lang/ClassLoader;)Lio/netty/handler/codec/serialization/ClassResolver;
    .locals 3

    .line 42
    new-instance v0, Lio/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;

    .line 43
    invoke-static {p0}, Lio/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance p0, Lio/netty/handler/codec/serialization/WeakReferenceMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v2}, Lio/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, p0}, Lio/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lio/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method
