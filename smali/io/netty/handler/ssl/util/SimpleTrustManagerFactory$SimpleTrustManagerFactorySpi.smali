.class final Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "SimpleTrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleTrustManagerFactorySpi"
.end annotation


# instance fields
.field private parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

.field private volatile trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    .line 135
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v0}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 138
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 139
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 140
    aget-object v2, v0, v1

    .line 141
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    instance-of v3, v2, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Lio/netty/handler/ssl/util/X509TrustManagerWrapper;

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v3, v2}, Lio/netty/handler/ssl/util/X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v3, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iput-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 148
    :cond_2
    invoke-virtual {v0}, [Ljavax/net/ssl/TrustManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineInit(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-direct {v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 115
    throw p1
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 129
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 127
    throw p1
.end method

.method init(Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    return-void
.end method
