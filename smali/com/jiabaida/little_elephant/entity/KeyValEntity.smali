.class public Lcom/jiabaida/little_elephant/entity/KeyValEntity;
.super Ljava/lang/Object;
.source "KeyValEntity.java"


# instance fields
.field public key:Ljava/lang/Object;

.field public val:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->key:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/KeyValEntity;->val:Ljava/lang/Object;

    return-void
.end method
