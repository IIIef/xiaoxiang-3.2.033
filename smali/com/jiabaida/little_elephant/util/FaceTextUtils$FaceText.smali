.class public Lcom/jiabaida/little_elephant/util/FaceTextUtils$FaceText;
.super Ljava/lang/Object;
.source "FaceTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/util/FaceTextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceText"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/FaceTextUtils$FaceText;->text:Ljava/lang/String;

    return-void
.end method
