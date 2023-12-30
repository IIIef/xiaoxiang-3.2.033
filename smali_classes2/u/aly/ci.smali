.class public Lu/aly/ci;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/dk;

.field private c:Lu/aly/cy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    new-instance v0, Lu/aly/cs$a;

    invoke-direct {v0}, Lu/aly/cs$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/ci;-><init>(Lu/aly/da;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/da;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/ci;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, v0}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lu/aly/ci;->b:Lu/aly/dk;

    .line 68
    invoke-interface {p1, v1}, Lu/aly/da;->a(Lu/aly/dm;)Lu/aly/cy;

    move-result-object p1

    iput-object p1, p0, Lu/aly/ci;->c:Lu/aly/cy;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/bz;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/ci;->a(Lu/aly/bz;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    new-instance p1, Lu/aly/cf;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cf;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lu/aly/bz;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lu/aly/ci;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/ci;->c:Lu/aly/cy;

    invoke-interface {p1, v0}, Lu/aly/bz;->b(Lu/aly/cy;)V

    .line 83
    iget-object p1, p0, Lu/aly/ci;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lu/aly/bz;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/ci;->a(Lu/aly/bz;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
