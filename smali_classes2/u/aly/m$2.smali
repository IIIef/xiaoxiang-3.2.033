.class Lu/aly/m$2;
.super Lcom/umeng/analytics/g;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lu/aly/m$2;->a:Lu/aly/m;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lu/aly/m$2;->a:Lu/aly/m;

    invoke-static {v0}, Lu/aly/m;->a(Lu/aly/m;)Lu/aly/q;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/q;->a()V

    return-void
.end method
