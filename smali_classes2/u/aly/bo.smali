.class public Lu/aly/bo;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bo$c;,
        Lu/aly/bo$d;,
        Lu/aly/bo$a;,
        Lu/aly/bo$b;,
        Lu/aly/bo$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/bz<",
        "Lu/aly/bo;",
        "Lu/aly/bo$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bo$e;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dd;

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/ct;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/dg;",
            ">;",
            "Lu/aly/dh;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lu/aly/dd;

    const-string v1, "Traffic"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bo;->d:Lu/aly/dd;

    .line 26
    new-instance v0, Lu/aly/ct;

    const-string v1, "upload_traffic"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->e:Lu/aly/ct;

    .line 28
    new-instance v0, Lu/aly/ct;

    const-string v4, "download_traffic"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->f:Lu/aly/ct;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bo;->g:Ljava/util/Map;

    .line 34
    const-class v5, Lu/aly/di;

    new-instance v6, Lu/aly/bo$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/bo$b;-><init>(Lu/aly/bo$1;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v5, Lu/aly/dj;

    new-instance v6, Lu/aly/bo$d;

    invoke-direct {v6, v7}, Lu/aly/bo$d;-><init>(Lu/aly/bo$1;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lu/aly/bo$e;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    sget-object v5, Lu/aly/bo$e;->a:Lu/aly/bo$e;

    new-instance v6, Lu/aly/cl;

    new-instance v7, Lu/aly/cm;

    invoke-direct {v7, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v6, v1, v3, v7}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lu/aly/bo$e;->b:Lu/aly/bo$e;

    new-instance v5, Lu/aly/cl;

    new-instance v6, Lu/aly/cm;

    invoke-direct {v6, v2}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v5, v4, v3, v6}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bo;->c:Ljava/util/Map;

    .line 125
    const-class v1, Lu/aly/bo;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bo;->j:B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lu/aly/bo;-><init>()V

    .line 133
    iput p1, p0, Lu/aly/bo;->a:I

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lu/aly/bo;->a(Z)V

    .line 135
    iput p2, p0, Lu/aly/bo;->b:I

    .line 136
    invoke-virtual {p0, p1}, Lu/aly/bo;->b(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bo;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-byte v0, p0, Lu/aly/bo;->j:B

    .line 143
    iget-byte v0, p1, Lu/aly/bo;->j:B

    iput-byte v0, p0, Lu/aly/bo;->j:B

    .line 144
    iget v0, p1, Lu/aly/bo;->a:I

    iput v0, p0, Lu/aly/bo;->a:I

    .line 145
    iget p1, p1, Lu/aly/bo;->b:I

    iput p1, p0, Lu/aly/bo;->b:I

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    :try_start_0
    iput-byte v0, p0, Lu/aly/bo;->j:B

    .line 264
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bo;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 255
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic k()Lu/aly/dd;
    .locals 1

    .line 22
    sget-object v0, Lu/aly/bo;->d:Lu/aly/dd;

    return-object v0
.end method

.method static synthetic l()Lu/aly/ct;
    .locals 1

    .line 22
    sget-object v0, Lu/aly/bo;->e:Lu/aly/ct;

    return-object v0
.end method

.method static synthetic m()Lu/aly/ct;
    .locals 1

    .line 22
    sget-object v0, Lu/aly/bo;->f:Lu/aly/ct;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bo;
    .locals 1

    .line 149
    new-instance v0, Lu/aly/bo;

    invoke-direct {v0, p0}, Lu/aly/bo;-><init>(Lu/aly/bo;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bo;
    .locals 0

    .line 165
    iput p1, p0, Lu/aly/bo;->a:I

    const/4 p1, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lu/aly/bo;->a(Z)V

    return-object p0
.end method

.method public a(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 217
    sget-object v0, Lu/aly/bo;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->b(Lu/aly/cy;Lu/aly/bz;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 183
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bo;->j:B

    return-void
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lu/aly/bo;->d(I)Lu/aly/bo$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lu/aly/bo;->a(Z)V

    .line 155
    iput v0, p0, Lu/aly/bo;->a:I

    .line 156
    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Z)V

    .line 157
    iput v0, p0, Lu/aly/bo;->b:I

    return-void
.end method

.method public b(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 221
    sget-object v0, Lu/aly/bo;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/cy;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dh;

    invoke-interface {v0}, Lu/aly/dh;->b()Lu/aly/dg;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dg;->a(Lu/aly/cy;Lu/aly/bz;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 209
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/bw;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bo;->j:B

    return-void
.end method

.method public c()I
    .locals 1

    .line 161
    iget v0, p0, Lu/aly/bo;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bo;
    .locals 0

    .line 191
    iput p1, p0, Lu/aly/bo;->b:I

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lu/aly/bo;->b(Z)V

    return-object p0
.end method

.method public d(I)Lu/aly/bo$e;
    .locals 0

    .line 213
    invoke-static {p1}, Lu/aly/bo$e;->a(I)Lu/aly/bo$e;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    .line 171
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bo;->j:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 179
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 187
    iget v0, p0, Lu/aly/bo;->b:I

    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lu/aly/bo;->a()Lu/aly/bo;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 197
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bo;->j:B

    return-void
.end method

.method public i()Z
    .locals 2

    .line 205
    iget-byte v0, p0, Lu/aly/bo;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/bw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Traffic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_traffic:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Lu/aly/bo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download_traffic:"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lu/aly/bo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
