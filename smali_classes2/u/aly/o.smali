.class public Lu/aly/o;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lu/aly/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lu/aly/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lu/aly/o;->b:Lu/aly/w;

    invoke-interface {v0, p1}, Lu/aly/w;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lu/aly/o;->b:Lu/aly/w;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lu/aly/w;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lu/aly/w;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lu/aly/o;->b:Lu/aly/w;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 33
    invoke-direct {p0, p2}, Lu/aly/o;->a(Ljava/lang/Throwable;)V

    .line 35
    iget-object v0, p0, Lu/aly/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lu/aly/o;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
