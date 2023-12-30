.class Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;
.super Ljava/lang/Object;
.source "RxAnimationTool.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/tool/RxAnimationTool;->cardFilpAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterView:Landroid/view/View;

.field final synthetic val$beforeView:Landroid/view/View;

.field final synthetic val$finalInvisToVis:Landroid/animation/ObjectAnimator;

.field final synthetic val$finalVisToInvis:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$beforeView:Landroid/view/View;

    iput-object p2, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$afterView:Landroid/view/View;

    iput-object p3, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$finalInvisToVis:Landroid/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$finalVisToInvis:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$beforeView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$afterView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$finalInvisToVis:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 107
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$beforeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$afterView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$finalVisToInvis:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 111
    iget-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$2;->val$beforeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
