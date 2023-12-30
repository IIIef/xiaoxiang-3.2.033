.class Lcom/jiabaida/little_elephant/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/util/ToastUtils;->toastDefault(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/util/ToastUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$gravity:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/util/ToastUtils;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->this$0:Lcom/jiabaida/little_elephant/util/ToastUtils;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$gravity:I

    iput p5, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x42

    const/4 v1, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$message:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 47
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$gravity:I

    if-eq v2, v0, :cond_1

    .line 49
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    iget v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$gravity:I

    invoke-virtual {v2, v3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 50
    :cond_1
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    iget v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$duration:I

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 51
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 53
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$message:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 54
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$gravity:I

    if-eq v2, v0, :cond_3

    .line 56
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$gravity:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 57
    :cond_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/jiabaida/little_elephant/util/ToastUtils$1;->val$duration:I

    if-eqz v2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 58
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
