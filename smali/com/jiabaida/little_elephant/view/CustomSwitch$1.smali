.class Lcom/jiabaida/little_elephant/view/CustomSwitch$1;
.super Ljava/lang/Object;
.source "CustomSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/view/CustomSwitch;->startColorAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/view/CustomSwitch;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/view/CustomSwitch;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch$1;->this$0:Lcom/jiabaida/little_elephant/view/CustomSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch$1;->this$0:Lcom/jiabaida/little_elephant/view/CustomSwitch;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->access$002(Lcom/jiabaida/little_elephant/view/CustomSwitch;I)I

    return-void
.end method
