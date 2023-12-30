.class Lcom/libs/qrcodecamera/tool/RxAnimationTool$1;
.super Ljava/lang/Object;
.source "RxAnimationTool.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/tool/RxAnimationTool;->animationColorGradient(IILcom/libs/qrcodecamera/interfaces/OnDoIntListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/libs/qrcodecamera/interfaces/OnDoIntListener;


# direct methods
.method constructor <init>(Lcom/libs/qrcodecamera/interfaces/OnDoIntListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$1;->val$listener:Lcom/libs/qrcodecamera/interfaces/OnDoIntListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$1;->val$listener:Lcom/libs/qrcodecamera/interfaces/OnDoIntListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/libs/qrcodecamera/interfaces/OnDoIntListener;->doSomething(I)V

    return-void
.end method
