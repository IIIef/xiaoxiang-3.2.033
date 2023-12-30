.class public interface abstract Lcom/jiabaida/little_elephant/util/PermissionHelper$PermissionListener;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/util/PermissionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionListener"
.end annotation


# virtual methods
.method public varargs abstract doAfterDenied([Ljava/lang/String;)V
.end method

.method public varargs abstract doAfterGrand([Ljava/lang/String;)V
.end method
