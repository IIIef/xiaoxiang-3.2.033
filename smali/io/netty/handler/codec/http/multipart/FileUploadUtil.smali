.class final Lio/netty/handler/codec/http/multipart/FileUploadUtil;
.super Ljava/lang/Object;
.source "FileUploadUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(Lio/netty/handler/codec/http/multipart/FileUpload;Lio/netty/handler/codec/http/multipart/FileUpload;)I
    .locals 0

    .line 31
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static equals(Lio/netty/handler/codec/http/multipart/FileUpload;Lio/netty/handler/codec/http/multipart/FileUpload;)Z
    .locals 0

    .line 27
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static hashCode(Lio/netty/handler/codec/http/multipart/FileUpload;)I
    .locals 0

    .line 23
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
