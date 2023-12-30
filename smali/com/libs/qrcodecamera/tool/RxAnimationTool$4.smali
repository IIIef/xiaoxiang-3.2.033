.class Lcom/libs/qrcodecamera/tool/RxAnimationTool$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RxAnimationTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/libs/qrcodecamera/tool/RxAnimationTool;->popout(Landroid/view/View;JLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$4;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 221
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 222
    iget-object v0, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$4;->val$view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/libs/qrcodecamera/tool/RxAnimationTool$4;->val$animatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
