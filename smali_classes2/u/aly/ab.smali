.class public Lu/aly/ab;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lu/aly/s;


# static fields
.field private static final h:Ljava/lang/String; = "successful_request"

.field private static final i:Ljava/lang/String; = "failed_requests "

.field private static final j:Ljava/lang/String; = "last_request_spent_ms"

.field private static final k:Ljava/lang/String; = "last_request_time"

.field private static final l:Ljava/lang/String; = "first_activate_time"

.field private static final m:Ljava/lang/String; = "last_req"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    .line 17
    iput v0, p0, Lu/aly/ab;->d:I

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lu/aly/ab;->f:J

    .line 25
    iput-wide v0, p0, Lu/aly/ab;->g:J

    .line 37
    invoke-direct {p0, p1}, Lu/aly/ab;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/as;
    .locals 3

    .line 115
    invoke-static {p0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 117
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    const-string v1, "failed_requests "

    const/4 v2, 0x0

    .line 119
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/as;->c(I)Lu/aly/as;

    const-string v1, "last_request_spent_ms"

    .line 120
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/as;->d(I)Lu/aly/as;

    const-string v1, "successful_request"

    .line 121
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lu/aly/as;->a(I)Lu/aly/as;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ab;->n:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "successful_request"

    const/4 v1, 0x0

    .line 44
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/ab;->a:I

    const-string v0, "failed_requests "

    .line 45
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/ab;->b:I

    const-string v0, "last_request_spent_ms"

    .line 47
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/ab;->e:I

    const-string v0, "last_request_time"

    const-wide/16 v1, 0x0

    .line 48
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lu/aly/ab;->c:J

    const-string v0, "last_req"

    .line 50
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/ab;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lu/aly/ab;->i()V

    return-void
.end method

.method public b()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lu/aly/ab;->j()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lu/aly/ab;->g()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lu/aly/ab;->h()V

    return-void
.end method

.method public e()I
    .locals 2

    .line 54
    iget v0, p0, Lu/aly/ab;->e:I

    const v1, 0x36ee80

    if-le v0, v1, :cond_0

    const v0, 0x36ee80

    :cond_0
    return v0
.end method

.method public f()Z
    .locals 7

    .line 58
    iget-wide v0, p0, Lu/aly/ab;->c:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lu/aly/ab;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->g()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public g()V
    .locals 2

    .line 65
    iget v0, p0, Lu/aly/ab;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/ab;->a:I

    .line 67
    iget-wide v0, p0, Lu/aly/ab;->f:J

    iput-wide v0, p0, Lu/aly/ab;->c:J

    return-void
.end method

.method public h()V
    .locals 1

    .line 71
    iget v0, p0, Lu/aly/ab;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/ab;->b:I

    return-void
.end method

.method public i()V
    .locals 2

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/ab;->f:J

    return-void
.end method

.method public j()V
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/ab;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lu/aly/ab;->e:I

    return-void
.end method

.method public k()V
    .locals 4

    .line 83
    iget-object v0, p0, Lu/aly/ab;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lu/aly/ab;->a:I

    const-string v2, "successful_request"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lu/aly/ab;->b:I

    const-string v2, "failed_requests "

    .line 86
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lu/aly/ab;->e:I

    const-string v2, "last_request_spent_ms"

    .line 87
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lu/aly/ab;->c:J

    const-string v3, "last_request_time"

    .line 88
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lu/aly/ab;->f:J

    const-string v3, "last_req"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l()V
    .locals 4

    .line 94
    iget-object v0, p0, Lu/aly/ab;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "first_activate_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m()Z
    .locals 5

    .line 99
    iget-wide v0, p0, Lu/aly/ab;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 100
    iget-object v0, p0, Lu/aly/ab;->n:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/y;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/ab;->g:J

    .line 103
    :cond_0
    iget-wide v0, p0, Lu/aly/ab;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 107
    invoke-virtual {p0}, Lu/aly/ab;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lu/aly/ab;->g:J

    :goto_0
    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lu/aly/ab;->f:J

    return-wide v0
.end method
