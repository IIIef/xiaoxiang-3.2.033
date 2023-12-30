.class public Lu/aly/al;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lu/aly/x;


# static fields
.field private static h:Lu/aly/al;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lu/aly/al;->a:Z

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lu/aly/al;->e:F

    .line 21
    iput v0, p0, Lu/aly/al;->f:F

    .line 39
    iput-object p1, p0, Lu/aly/al;->g:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, p2, p3}, Lu/aly/al;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/al;
    .locals 4

    const-class v0, Lu/aly/al;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lu/aly/al;->h:Lu/aly/al;

    if-nez v1, :cond_0

    .line 29
    invoke-static {p0}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/g;->b()Lu/aly/g$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Lu/aly/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3}, Lu/aly/g$a;->d(I)I

    move-result v1

    .line 32
    new-instance v3, Lu/aly/al;

    invoke-direct {v3, p0, v2, v1}, Lu/aly/al;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/al;->h:Lu/aly/al;

    .line 35
    :cond_0
    sget-object p0, Lu/aly/al;->h:Lu/aly/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\\|"

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 83
    array-length v0, p0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    return v1

    .line 87
    :cond_1
    aget-object v0, p0, v1

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, ","

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 88
    aget-object v0, p0, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 89
    aget-object v5, p0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v0, v5, :cond_2

    return v4

    .line 95
    :cond_2
    aget-object v0, p0, v1

    const-string v5, "FIXED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    aget-object v0, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 97
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt v0, p0, :cond_3

    if-lt p0, v4, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method private b(Ljava/lang/String;I)F
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x5

    .line 47
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 113
    aget-object v0, p1, v0

    const-string v1, "SIG13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 114
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget v2, p0, Lu/aly/al;->e:F

    const/4 v3, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 118
    iput-boolean v3, p0, Lu/aly/al;->a:Z

    return-void

    .line 123
    :cond_2
    aget-object v0, p1, v3

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ","

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 124
    aget-object v0, p1, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v6, v0

    new-array v6, v6, [F

    const/4 v7, 0x0

    .line 126
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 127
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v6, v4

    :cond_4
    const/4 v0, 0x4

    .line 132
    aget-object v0, p1, v0

    const-string v7, "RPT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 133
    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 134
    array-length v0, p1

    new-array v4, v0, [I

    const/4 v0, 0x0

    .line 135
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 136
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 142
    :goto_3
    array-length v0, v6

    const/4 v2, -0x1

    if-ge p1, v0, :cond_7

    .line 143
    aget v0, v6, p1

    add-float/2addr v1, v0

    .line 144
    iget v0, p0, Lu/aly/al;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    :goto_4
    if-eq p1, v2, :cond_8

    .line 151
    iput-boolean v5, p0, Lu/aly/al;->a:Z

    add-int/lit8 v0, p1, 0x1

    .line 152
    iput v0, p0, Lu/aly/al;->d:I

    .line 153
    aget p1, v4, p1

    iput p1, p0, Lu/aly/al;->b:I

    goto :goto_5

    .line 155
    :cond_8
    iput-boolean v3, p0, Lu/aly/al;->a:Z

    :goto_5
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 168
    aget-object v1, p1, v1

    const-string v2, "SIG13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 169
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 172
    :cond_1
    iget v1, p0, Lu/aly/al;->e:F

    const/4 v2, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 173
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    return-void

    .line 178
    :cond_2
    aget-object v0, p1, v2

    const-string v1, "FIXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 179
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 183
    aget-object v5, p1, v5

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x5

    .line 184
    aget-object p1, p1, v4

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 185
    array-length v4, p1

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 186
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 187
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_5

    .line 192
    iput-boolean v3, p0, Lu/aly/al;->a:Z

    .line 193
    iput v0, p0, Lu/aly/al;->d:I

    sub-int/2addr v0, v3

    .line 194
    aget p1, v4, v0

    iput p1, p0, Lu/aly/al;->b:I

    goto :goto_2

    .line 196
    :cond_5
    iput-boolean v2, p0, Lu/aly/al;->a:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 55
    iput p2, p0, Lu/aly/al;->c:I

    .line 56
    iget-object p2, p0, Lu/aly/al;->g:Landroid/content/Context;

    invoke-static {p2}, Lu/aly/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xc

    .line 63
    :try_start_0
    invoke-direct {p0, p2, v0}, Lu/aly/al;->b(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/al;->e:F

    const/4 v0, 0x6

    .line 64
    invoke-direct {p0, p2, v0}, Lu/aly/al;->b(Ljava/lang/String;I)F

    move-result p2

    iput p2, p0, Lu/aly/al;->f:F

    const-string p2, "SIG7"

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lu/aly/al;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "FIXED"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lu/aly/al;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 72
    iput-boolean v1, p0, Lu/aly/al;->a:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    .line 58
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lu/aly/al;->a:Z

    return-void
.end method

.method public a(Lu/aly/g$a;)V
    .locals 2

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Lu/aly/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/g$a;->d(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lu/aly/al;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lu/aly/al;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 205
    iget v0, p0, Lu/aly/al;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 209
    iget v0, p0, Lu/aly/al;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 213
    iget v0, p0, Lu/aly/al;->d:I

    return v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lu/aly/al;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    iget v1, p0, Lu/aly/al;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "client_test"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " p13:"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Lu/aly/al;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " p07:"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v1, p0, Lu/aly/al;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lu/aly/al;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " interval:"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Lu/aly/al;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
