.class Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/base/BaseFragment;->setTitle(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

.field final synthetic val$centerTitle:Ljava/lang/String;

.field final synthetic val$leftView:Landroid/view/View;

.field final synthetic val$rightTitle:Ljava/lang/String;

.field final synthetic val$rightView:Landroid/widget/TextView;

.field final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/base/BaseFragment;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->this$0:Lcom/jiabaida/little_elephant/ui/base/BaseFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$titleView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$leftView:Landroid/view/View;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$centerTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    .line 264
    iget-object v4, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$leftView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    new-array v5, v1, [I

    aput v4, v5, v3

    new-array v1, v1, [I

    aput v4, v1, v3

    .line 267
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 269
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    aput v6, v1, v3

    .line 271
    :cond_0
    iget-object v6, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$leftView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_1

    aput v4, v5, v3

    :cond_1
    aget v4, v5, v3

    aget v1, v1, v3

    .line 276
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v2, v3

    aget v1, v2, v3

    aget v2, v2, v3

    .line 278
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$centerTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$centerTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/base/BaseFragment$3;->val$rightTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
