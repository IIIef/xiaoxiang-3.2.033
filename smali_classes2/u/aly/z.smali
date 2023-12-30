.class public Lu/aly/z;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3


# instance fields
.field private d:Lu/aly/e;

.field private e:Lu/aly/g;

.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Lu/aly/ab;

.field private i:Lu/aly/u;

.field private j:Lu/aly/bp;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/ab;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lu/aly/z;->f:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lu/aly/z;->k:Z

    .line 53
    invoke-static {p1}, Lu/aly/e;->a(Landroid/content/Context;)Lu/aly/e;

    move-result-object v0

    iput-object v0, p0, Lu/aly/z;->d:Lu/aly/e;

    .line 54
    invoke-static {p1}, Lu/aly/g;->a(Landroid/content/Context;)Lu/aly/g;

    move-result-object v0

    iput-object v0, p0, Lu/aly/z;->e:Lu/aly/g;

    .line 56
    iput-object p1, p0, Lu/aly/z;->g:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lu/aly/z;->h:Lu/aly/ab;

    .line 58
    new-instance p2, Lu/aly/u;

    invoke-direct {p2, p1}, Lu/aly/u;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lu/aly/z;->i:Lu/aly/u;

    .line 59
    iget-object p1, p0, Lu/aly/z;->h:Lu/aly/ab;

    invoke-virtual {p2, p1}, Lu/aly/u;->a(Lu/aly/s;)V

    return-void
.end method

.method static synthetic a(Lu/aly/z;[B)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lu/aly/z;->a([B)I

    move-result p0

    return p0
.end method

.method private a([B)I
    .locals 3

    .line 196
    new-instance v0, Lu/aly/bl;

    invoke-direct {v0}, Lu/aly/bl;-><init>()V

    .line 197
    new-instance v1, Lu/aly/cc;

    new-instance v2, Lu/aly/cr$a;

    invoke-direct {v2}, Lu/aly/cr$a;-><init>()V

    invoke-direct {v1, v2}, Lu/aly/cc;-><init>(Lu/aly/da;)V

    const/4 v2, 0x1

    .line 200
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lu/aly/cc;->a(Lu/aly/bz;[B)V

    .line 202
    iget p1, v0, Lu/aly/bl;->a:I

    if-ne p1, v2, :cond_0

    .line 203
    iget-object p1, p0, Lu/aly/z;->e:Lu/aly/g;

    invoke-virtual {v0}, Lu/aly/bl;->j()Lu/aly/bc;

    move-result-object v1

    invoke-virtual {p1, v1}, Lu/aly/g;->b(Lu/aly/bc;)V

    .line 204
    iget-object p1, p0, Lu/aly/z;->e:Lu/aly/g;

    invoke-virtual {p1}, Lu/aly/g;->d()V

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send log:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lu/aly/bl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    :goto_0
    iget p1, v0, Lu/aly/bl;->a:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic a(Lu/aly/z;)Lu/aly/u;
    .locals 0

    .line 25
    iget-object p0, p0, Lu/aly/z;->i:Lu/aly/u;

    return-object p0
.end method

.method static synthetic b(Lu/aly/z;)Lu/aly/ab;
    .locals 0

    .line 25
    iget-object p0, p0, Lu/aly/z;->h:Lu/aly/ab;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 87
    iget-object v0, p0, Lu/aly/z;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()Lcom/umeng/analytics/h$a;

    move-result-object v0

    .line 88
    new-instance v1, Lu/aly/z$1;

    invoke-direct {v1, p0}, Lu/aly/z$1;-><init>(Lu/aly/z;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h$a;->a(Lcom/umeng/analytics/h$b;)V

    return-void
.end method

.method private b(Lu/aly/bp;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 224
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/ci;

    invoke-direct {v1}, Lu/aly/ci;-><init>()V

    invoke-virtual {v1, p1}, Lu/aly/ci;->a(Lu/aly/bz;)[B

    move-result-object v1

    .line 225
    sget-boolean v2, Lu/aly/bv;->a:Z

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/bv;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Fail to serialize log ..."

    .line 232
    invoke-static {v1, p1}, Lu/aly/bv;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 142
    iget-object v0, p0, Lu/aly/z;->d:Lu/aly/e;

    invoke-virtual {v0}, Lu/aly/e;->a()V

    .line 143
    iget-object v0, p0, Lu/aly/z;->j:Lu/aly/bp;

    .line 144
    iget-object v1, p0, Lu/aly/z;->d:Lu/aly/e;

    invoke-virtual {v1}, Lu/aly/e;->b()Lu/aly/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->a(Lu/aly/bb;)Lu/aly/bp;

    .line 145
    invoke-direct {p0, v0}, Lu/aly/z;->b(Lu/aly/bp;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "message is null"

    .line 148
    invoke-static {v0}, Lu/aly/bv;->d(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lu/aly/z;->k:Z

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lu/aly/z;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/c;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lu/aly/z;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/c;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/c;

    move-result-object v0

    .line 159
    :goto_0
    invoke-virtual {v0}, Lu/aly/c;->c()[B

    move-result-object v0

    .line 160
    iget-object v1, p0, Lu/aly/z;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->f()V

    .line 166
    iget-object v1, p0, Lu/aly/z;->i:Lu/aly/u;

    invoke-virtual {v1, v0}, Lu/aly/u;->a([B)[B

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 170
    :cond_2
    invoke-direct {p0, v1}, Lu/aly/z;->a([B)I

    move-result v1

    :goto_1
    if-eq v1, v2, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto :goto_2

    .line 183
    :cond_3
    iget-object v0, p0, Lu/aly/z;->h:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->k()V

    goto :goto_2

    .line 175
    :cond_4
    iget-object v0, p0, Lu/aly/z;->h:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lu/aly/z;->h:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->l()V

    .line 179
    :cond_5
    iget-object v0, p0, Lu/aly/z;->d:Lu/aly/e;

    invoke-virtual {v0}, Lu/aly/e;->d()V

    .line 180
    iget-object v0, p0, Lu/aly/z;->h:Lu/aly/ab;

    invoke-virtual {v0}, Lu/aly/ab;->k()V

    goto :goto_2

    .line 186
    :cond_6
    iget-boolean v1, p0, Lu/aly/z;->l:Z

    if-nez v1, :cond_7

    .line 187
    iget-object v1, p0, Lu/aly/z;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/h;->b([B)V

    :cond_7
    const-string v0, "connection error"

    .line 189
    invoke-static {v0}, Lu/aly/bv;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lu/aly/z;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lu/aly/z;->l:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 79
    iget-object v0, p0, Lu/aly/z;->j:Lu/aly/bp;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lu/aly/z;->c()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lu/aly/z;->b()V

    :goto_0
    return-void
.end method

.method public a(Lu/aly/bp;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lu/aly/z;->j:Lu/aly/bp;

    return-void
.end method

.method public a(Lu/aly/x;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lu/aly/z;->e:Lu/aly/g;

    invoke-virtual {v0, p1}, Lu/aly/g;->a(Lu/aly/x;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lu/aly/z;->k:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lu/aly/z;->l:Z

    return-void
.end method
