.class public Lu/aly/bj;
.super Lu/aly/cj;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/cj<",
        "Lu/aly/bj;",
        "Lu/aly/bj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bj$a;",
            "Lu/aly/cl;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lu/aly/dd;

.field private static final e:Lu/aly/ct;

.field private static final f:Lu/aly/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v0, Lu/aly/dd;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bj;->d:Lu/aly/dd;

    .line 20
    new-instance v0, Lu/aly/ct;

    const-string v1, "string_value"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->e:Lu/aly/ct;

    .line 22
    new-instance v0, Lu/aly/ct;

    const-string v3, "long_value"

    const/16 v4, 0xa

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5}, Lu/aly/ct;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bj;->f:Lu/aly/ct;

    .line 94
    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Lu/aly/bj$a;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 96
    sget-object v5, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    new-instance v6, Lu/aly/cl;

    new-instance v7, Lu/aly/cm;

    invoke-direct {v7, v2}, Lu/aly/cm;-><init>(B)V

    const/4 v2, 0x3

    invoke-direct {v6, v1, v2, v7}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    new-instance v5, Lu/aly/cl;

    new-instance v6, Lu/aly/cm;

    invoke-direct {v6, v4}, Lu/aly/cm;-><init>(B)V

    invoke-direct {v5, v3, v2, v6}, Lu/aly/cl;-><init>(Ljava/lang/String;BLu/aly/cm;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bj;->a:Ljava/util/Map;

    .line 105
    const-class v1, Lu/aly/bj;

    invoke-static {v1, v0}, Lu/aly/cl;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lu/aly/cj;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lu/aly/cj;-><init>(Lu/aly/cg;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bj;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lu/aly/cj;-><init>(Lu/aly/cj;)V

    return-void
.end method

.method public static a(J)Lu/aly/bj;
    .locals 1

    .line 131
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 132
    invoke-virtual {v0, p0, p1}, Lu/aly/bj;->b(J)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bj;
    .locals 1

    .line 125
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0}, Lu/aly/bj;-><init>()V

    .line 126
    invoke-virtual {v0, p0}, Lu/aly/bj;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 340
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->a(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 343
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

    .line 331
    :try_start_0
    new-instance v0, Lu/aly/cs;

    new-instance v1, Lu/aly/dk;

    invoke-direct {v1, p1}, Lu/aly/dk;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cs;-><init>(Lu/aly/dm;)V

    invoke-virtual {p0, v0}, Lu/aly/bj;->b(Lu/aly/cy;)V
    :try_end_0
    .catch Lu/aly/cf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 334
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cf;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(Lu/aly/cy;Lu/aly/ct;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 159
    iget-short v0, p2, Lu/aly/ct;->c:S

    invoke-static {v0}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 161
    sget-object v2, Lu/aly/bj$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 172
    iget-byte v0, p2, Lu/aly/ct;->b:B

    sget-object v2, Lu/aly/bj;->f:Lu/aly/ct;

    iget-byte v2, v2, Lu/aly/ct;->b:B

    if-ne v0, v2, :cond_0

    .line 174
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    iget-byte p2, p2, Lu/aly/ct;->b:B

    invoke-static {p1, p2}, Lu/aly/db;->a(Lu/aly/cy;B)V

    return-object v1

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_2
    iget-byte v0, p2, Lu/aly/ct;->b:B

    sget-object v2, Lu/aly/bj;->e:Lu/aly/ct;

    iget-byte v2, v2, Lu/aly/ct;->b:B

    if-ne v0, v2, :cond_3

    .line 165
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :cond_3
    iget-byte p2, p2, Lu/aly/ct;->b:B

    invoke-static {p1, p2}, Lu/aly/db;->a(Lu/aly/cy;B)V

    :cond_4
    return-object v1
.end method

.method protected a(Lu/aly/cy;S)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 208
    invoke-static {p2}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    sget-object p2, Lu/aly/bj$1;->a:[I

    invoke-virtual {v0}, Lu/aly/bj$a;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 217
    invoke-virtual {p1}, Lu/aly/cy;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 223
    :cond_2
    new-instance p1, Lu/aly/cz;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find a field with field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Lu/aly/bj$a;
    .locals 0

    .line 267
    invoke-static {p1}, Lu/aly/bj$a;->a(I)Lu/aly/bj$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(S)Lu/aly/bj$a;
    .locals 0

    .line 263
    invoke-static {p1}, Lu/aly/bj$a;->b(I)Lu/aly/bj$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Lu/aly/bj;
    .locals 1

    .line 121
    new-instance v0, Lu/aly/bj;

    invoke-direct {v0, p0}, Lu/aly/bj;-><init>(Lu/aly/bj;)V

    return-object v0
.end method

.method protected a(Lu/aly/bj$a;)Lu/aly/ct;
    .locals 3

    .line 246
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    sget-object p1, Lu/aly/bj;->f:Lu/aly/ct;

    return-object p1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    sget-object p1, Lu/aly/bj;->e:Lu/aly/ct;

    return-object p1
.end method

.method protected bridge synthetic a(Lu/aly/cg;)Lu/aly/ct;
    .locals 0

    .line 17
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lu/aly/bj$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 138
    sget-object v0, Lu/aly/bj$1;->a:[I

    invoke-virtual {p1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 146
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type Long for field \'long_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 140
    :cond_2
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 143
    :cond_3
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Was expecting value of type String for field \'string_value\', but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic a(Lu/aly/cg;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 17
    check-cast p1, Lu/aly/bj$a;

    invoke-virtual {p0, p1, p2}, Lu/aly/bj;->a(Lu/aly/bj$a;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lu/aly/bj;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic b(I)Lu/aly/cg;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(I)Lu/aly/bj$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(S)Lu/aly/cg;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lu/aly/bj;->a(S)Lu/aly/bj$a;

    move-result-object p1

    return-object p1
.end method

.method public b(J)V
    .locals 1

    .line 296
    sget-object v0, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    .line 297
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    iput-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    .line 283
    iput-object p1, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    return-void
.end method

.method protected c()Lu/aly/dd;
    .locals 1

    .line 258
    sget-object v0, Lu/aly/bj;->d:Lu/aly/dd;

    return-object v0
.end method

.method protected c(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 191
    sget-object v0, Lu/aly/bj$1;->a:[I

    iget-object v1, p0, Lu/aly/bj;->c:Lu/aly/cg;

    check-cast v1, Lu/aly/bj$a;

    invoke-virtual {v1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bj;->c:Lu/aly/cg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 271
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'string_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v2

    check-cast v2, Lu/aly/bj$a;

    invoke-virtual {p0, v2}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object v2

    iget-object v2, v2, Lu/aly/ct;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lu/aly/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 230
    sget-object v0, Lu/aly/bj$1;->a:[I

    iget-object v1, p0, Lu/aly/bj;->c:Lu/aly/cg;

    check-cast v1, Lu/aly/bj$a;

    invoke-virtual {v1}, Lu/aly/bj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(J)V

    return-void

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot write union with unknown field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bj;->c:Lu/aly/cg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_1
    iget-object v0, p0, Lu/aly/bj;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()J
    .locals 3

    .line 287
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v0

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lu/aly/bj;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get field \'long_value\' because union is currently set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Lu/aly/bj;->i()Lu/aly/cg;

    move-result-object v2

    check-cast v2, Lu/aly/bj$a;

    invoke-virtual {p0, v2}, Lu/aly/bj;->a(Lu/aly/bj$a;)Lu/aly/ct;

    move-result-object v2

    iget-object v2, v2, Lu/aly/ct;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 309
    instance-of v0, p1, Lu/aly/bj;

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Lu/aly/bj;

    invoke-virtual {p0, p1}, Lu/aly/bj;->a(Lu/aly/bj;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    sget-object v1, Lu/aly/bj$a;->a:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic g()Lu/aly/bz;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lu/aly/bj;->a()Lu/aly/bj;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lu/aly/bj;->c:Lu/aly/cg;

    sget-object v1, Lu/aly/bj$a;->b:Lu/aly/bj$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
