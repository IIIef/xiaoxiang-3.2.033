.class public Lu/aly/dk;
.super Lu/aly/dm;
.source "TIOStreamTransport.java"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lu/aly/dm;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lu/aly/dm;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    .line 53
    iput-object p1, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lu/aly/dm;-><init>()V

    .line 72
    iput-object p1, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    .line 73
    iput-object p2, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lu/aly/dm;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    .line 62
    iput-object p1, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dn;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    return p1

    .line 127
    :cond_0
    new-instance p1, Lu/aly/dn;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lu/aly/dn;-><init>(I)V

    throw p1

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lu/aly/dn;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lu/aly/dn;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 118
    :cond_1
    new-instance p1, Lu/aly/dn;

    const/4 p2, 0x1

    const-string p3, "Cannot read from null inputStream"

    invoke-direct {p1, p2, p3}, Lu/aly/dn;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dn;
        }
    .end annotation

    return-void
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dn;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Lu/aly/dn;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lu/aly/dn;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 137
    :cond_0
    new-instance p1, Lu/aly/dn;

    const/4 p2, 0x1

    const-string p3, "Cannot write to null outputStream"

    invoke-direct {p1, p2, p3}, Lu/aly/dn;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 95
    iget-object v0, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :goto_0
    iput-object v1, p0, Lu/aly/dk;->a:Ljava/io/InputStream;

    .line 103
    :cond_0
    iget-object v0, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 105
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :goto_1
    iput-object v1, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dn;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lu/aly/dk;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lu/aly/dn;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lu/aly/dn;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_0
    new-instance v0, Lu/aly/dn;

    const/4 v1, 0x1

    const-string v2, "Cannot flush null outputStream"

    invoke-direct {v0, v1, v2}, Lu/aly/dn;-><init>(ILjava/lang/String;)V

    throw v0
.end method
