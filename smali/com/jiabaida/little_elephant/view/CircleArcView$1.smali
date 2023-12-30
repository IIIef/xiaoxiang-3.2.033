.class Lcom/jiabaida/little_elephant/view/CircleArcView$1;
.super Ljava/lang/Object;
.source "CircleArcView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/CircleArcView;->setParams(Ljava/lang/String;FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/CircleArcView;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/CircleArcView;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CircleArcView$1;->this$0:Lcom/jiabaida/little_elephant/view/CircleArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CircleArcView$1;->this$0:Lcom/jiabaida/little_elephant/view/CircleArcView;

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/view/CircleArcView;->setProgress(F)V

    return-void
.end method
