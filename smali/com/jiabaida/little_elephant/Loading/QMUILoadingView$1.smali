.class Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;
.super Ljava/lang/Object;
.source "QMUILoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;->this$0:Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;->this$0:Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->access$002(Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;I)I

    .line 73
    iget-object p1, p0, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView$1;->this$0:Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/Loading/QMUILoadingView;->invalidate()V

    return-void
.end method
