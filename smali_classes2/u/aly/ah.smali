.class public Lu/aly/ah;
.super Lu/aly/av;
.source "UError.java"

# interfaces
.implements Lu/aly/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ah;->a(J)Lu/aly/av;

    .line 23
    sget-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    invoke-virtual {p0, v0}, Lu/aly/ah;->a(Lu/aly/aw;)Lu/aly/av;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lu/aly/ah;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lu/aly/ah;->a(Ljava/lang/String;)Lu/aly/av;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lu/aly/ah;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lu/aly/ah;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu/aly/ah;->a(Ljava/lang/String;)Lu/aly/av;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 50
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 59
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Z)Lu/aly/ah;
    .locals 0

    if-eqz p1, :cond_0

    .line 37
    sget-object p1, Lu/aly/aw;->a:Lu/aly/aw;

    goto :goto_0

    :cond_0
    sget-object p1, Lu/aly/aw;->b:Lu/aly/aw;

    :goto_0
    invoke-virtual {p0, p1}, Lu/aly/ah;->a(Lu/aly/aw;)Lu/aly/av;

    return-object p0
.end method

.method public a(Lu/aly/bp;Ljava/lang/String;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Lu/aly/bp;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lu/aly/bp;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/be;

    .line 71
    invoke-virtual {v1}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 79
    new-instance v1, Lu/aly/be;

    invoke-direct {v1}, Lu/aly/be;-><init>()V

    .line 80
    invoke-virtual {v1, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 81
    invoke-virtual {p1, v1}, Lu/aly/bp;->a(Lu/aly/be;)V

    .line 84
    :cond_2
    invoke-virtual {v1, p0}, Lu/aly/be;->a(Lu/aly/av;)V

    return-void
.end method
