.class public final Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "OpenSslCachingX509KeyManagerFactory.java"


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 2

    .line 41
    new-instance v0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    .line 58
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p0, v0, v1, p1}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method
